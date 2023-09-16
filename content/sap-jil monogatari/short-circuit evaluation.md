---
title: "[BOJ 28475] 논리 연산자를 조심하세요: Short-circuit Evaluation이란?"
tags:
  - boj
  - cpp
---
8월 20일 [icpc 신촌 2023 여름 캠프 컨테스트](https://www.instagram.com/p/CwytRGnvzW_)가 열렸습니다. 저는 감사하게도 그날 컨디션이 좋아서 중급에 참여해 4등을 기록했습니다. 오우 땡스갓

열린지 한 달 다 돼 가는데 이렇게 늦게 회고라도 쓰려는 거냐? 아닙니다. 다만 한가지 삽질했던게 있어서 늦게나마 글로 남겨두려고 합니다. 
## 문제
[문제의 문제: 편광판(BOJ 28475)](https://boj.kr/28475)

중급 F번으로 등장한 문제입니다. 6틀 후 7번째 시도에서 AC를 받았습니다.
![[Pasted image 20230916153403.png]]
실화냐?

## 아이디어
구간에 쿼리를 날리는 것에서 [[segment tree|세그먼트 트리]]를 이용한 풀이를 떠올릴 수 있습니다. 인접한 두 편광판 사이를 빛이 지나갈 수 있는가?(=`A[i]`와 `A[i+1]`의 차이가 2 혹은 6이 아닌가?)를 불리언으로 나타낼 수 있습니다.

## 맞왜틀?
6번째로 제출했던 마지막 틀린 소스입니다.
```cpp
#include <bits/stdc++.h>
using namespace std;

int n, m;
int A[200000];
bool seg[1000000];

bool blocked(int k){
    int tmp=abs(A[k]-A[k+1]);
    return (tmp==2 or tmp==6);
}

bool init(int node, int s, int e){
    if(s==e) return seg[node]=!blocked(s);
    else return seg[node]=(init(node*2, s, (s+e)/2) and init(node*2+1, (s+e)/2+1, e));
}

void update(int node, int s, int e, int t){
    if(s<=t and t<=e){
        if(s==e) seg[node]=!blocked(t);
        else{
            update(node*2, s, (s+e)/2, t);
            update(node*2+1, (s+e)/2+1, e, t);
            seg[node]=(seg[node*2] and seg[node*2+1]);
        }
    }
}

bool query(int node, int s, int e, int l, int r){
    if(e<l or r<s) return true;
    else if(l<=s and e<=r) return seg[node];
    else return (query(node*2, s, (s+e)/2, l, r) and query(node*2+1, (s+e)/2+1, e, l, r));
}

int main(){
    cin.tie(0); cout.tie(0); ios_base::sync_with_stdio(0);
    cin>>n>>m;
    for(int i=0; i<n; i++) cin>>A[i];
    init(1, 0, n-2);
    while(m--){
        int q, a, b;
        cin>>q>>a>>b;
        if(q==1){
            A[a-1]=b;
            if(a>1) update(1, 0, n-2, a-2);
            if(a<n) update(1, 0, n-2, a-1);
        }
        else{
            cout<<(query(1, 0, n-2, a-1, b-2)?1:0)<<'\n';
        }
    }
}
```
어디가 문제였을까요?

`init`함수를 봅시다.
```cpp
bool init(int node, int s, int e){
    if(s==e) return seg[node]=!blocked(s);
    else return seg[node]=(init(node*2, s, (s+e)/2) and init(node*2+1, (s+e)/2+1, e));
}
```
각 노드에서 자식 노드의 결과를 취합하고 그 결과를 반환합니다.

...과연 그럴까요?

문제를 파악하기 위해서는 `and`의 작동을 알아야 할 필요가 있습니다. [cpp reference](https://en.cppreference.com/w/cpp/language/operator_logical)에 따르면 `&&`(또는 `and`)와 `||`(또는 `or`)는 [**단락 평가**<sub>short-circuit evaluation</sub>](https://en.wikipedia.org/wiki/Short-circuit_evaluation)를 수행합니다. 이게 뭘까요?

## short-circuit evaluation
and 연산의 진리표를 봅시다. `A && B`는 다음과 같은 값을 가집니다.

| `A`\\`B` | **`true`** | **`false`** |
| --- | --- | --- |
| **`true`** | `true` | `false` |
| **`false`** | `false` | `false` |

`A`가 `false`인 경우, `B`의 값과 관계없이 결과값은 `false`가 됩니다. shot-circuit evaluation에서는 이를 이용하여 만약 `A`를 평가한 결과가 `false`라면, `A && B`는 **곧바로 `false`를 반환합니다.** `or`연산에서도 비슷한 방식으로 `A`가 `true`라면 곧바로 `true`를 반환합니다.

위의 오답 코드를 다시 봅시다. 만약 `init(node*2, s, (s+e)/2`가 `false`를 반환한다면, 결과는 반드시 `false`가 되므로, **`init(node*2+1, (s+e)/2+1, e)`는 평가되지 않습니다(즉 실행되지 않습니다).** 따라서 이 부분에 대한 초기화가 진행되지 않게 됩니다.

만약 init이 Side Effect가 없는 함수였다면 아무런 상관이 없었을 겁니다.(예를 들어, 아래의 `query`함수는 Side Effect가 없으므로 이런 방식으로 비교해도 생각한대로 작동합니다.)

## 해결
10분간의 고민 끝에 7번째 제출에서는 `init`을 다음과 같이 수정했습니다.
```cpp
bool init(int node, int s, int e){
    if(s==e) return seg[node]=!blocked(s);
    else{
        init(node*2, s, (s+e)/2);
        init(node*2+1, (s+e)/2+1, e);
        return seg[node]=(seg[node*2] and seg[node*2+1]);
    }
}
```
결과는 AC였습니다. 불리언 세그먼트 트리를 짤 때 주의하세요.