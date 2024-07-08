---
title: 벡터공간의 차원
date: 2024-07-08
tags:
  - math
  - linear_algebra
---
# 소개

유한한 크기의 [[basis|기저]]를 갖는 [[vector space|벡터공간]]은 그 기저의 크기가 항상 같습니다. 이를 그 벡터공간의 차원이라고 합니다.

# 증명

## 보조정리

> $K$ 위의 벡터공간 $V$의 어떤 유한한 기저 $\{\mathbf u_1, \cdots, \mathbf u_m\}$가 주어졌다고 합시다. 이 기저보다 크기가 큰 $V$의 유한 부분집합 $\{\mathbf v_1, \cdots, \mathbf v_n\}\ (n>m)$은 항상 선형종속입니다.

$\mathbf v_1, \cdots, \mathbf v_n$가 선형독립이라고 합시다. 그러면 기저의 정의에 따라 $\mathbf v_1$은 기저 $\mathbf u_1, \cdots, \mathbf u_m$의 선형결합 $a_1\mathbf u_1+\cdots+a_m\mathbf u_m$으로 표현할 수 있습니다. 선형독립인 벡터들엔 영벡터가 존재할 수 없으므로 $a_1,\cdots,a_m$중 적어도 하나는 $0$이 아닙니다. 기저의 순서를 재배열하여 이것이 $a_1$이 되도록 할 수 있습니다. 그러면 $\mathbf u_1=-(a_1)^{-1}(-\mathbf v_1+a_2\mathbf u_2+\cdots+a_m\mathbf u_m)$이 성립하여 $\mathbf v_1, \mathbf u_1, \cdots, \mathbf u_m$이 새로운 기저를 이루게 됩니다.

$\mathbf v_1, \cdots, \mathbf v_{k-1}, \mathbf u_{k}, \cdots, \mathbf u_m \ (2\le k \le m-1)$이 기저를 이룬다고 합시다. 그러면 $\mathbf v_k$는 이들의 선형결합 $a_1\mathbf v_1 + \cdots + a_{k-1}\mathbf v_{k-1} + a_k \mathbf u_k + \cdots + a_m\mathbf u_m$으로 표현할 수 있습니다. 그런데 $\mathbf v_1, \cdots, \mathbf v_n$이 선형독립이라고 가정했으므로, $a_k, \cdots, a_m$중 적어도 하나는 $0$이 아닙니다. 기저의 순서를 재배열하여 이것이 $a_k$가 되도록 할 수 있습니다. 그러면 $\mathbf u_k = -(a_k)^{-1}(a_1\mathbf v_1 + \cdots + a_{k-1}\mathbf v_{k-1}-\mathbf v_k+a_{k+1}\mathbf u_{k+1}+\cdots a_m\mathbf u_m)$이 성립하여 $\mathbf v_1, \cdots, \mathbf v_k, \mathbf u_{k+1}, \cdots, \mathbf u_m$이 새로운 기저를 이루게 됩니다.

마지막으로 같은 프로세스로 $\mathbf u_m$을 $\mathbf v_m$으로 대체할 수 있고, 그렇게 재귀적으로 $\mathbf v_1, \cdots, \mathbf v_m$은 기저를 이루게 됩니다. 그런데 $n>m$이라고 했으니 $\mathbf v_{m+1}$은 이들과 선형독립이어야 하는데, 그러면 기저의 정의와 모순되어 가정이 깨집니다. 따라서 $\mathbf v_1, \cdots, \mathbf v_n$은 선형종속입니다.

## 그러므로,

두 유한 기저가 주어졌을때, 둘의 크기가 다르다면 크기가 큰 쪽이 선형종속이 되어 기저의 정의에 위배됩니다. 따라서 둘은 항상 크기가 같아야 합니다.