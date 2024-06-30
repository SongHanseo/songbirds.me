---
title: 기저
date: 2024-06-30
tags:
  - math
  - linear_algebra
---
# 소개

어떤 [[vector space|벡터공간]]의 **기저**는 서로 *일차독립*이면서 그 벡터공간을 [[linear combination and linear span#선형생성|생성]]하는 벡터들의 집합을 말합니다.

# 일차종속

어떤 벡터들 $\mathbf v_1, \cdots, \mathbf v_n$이 일차종속이라 함은 다음을 뜻합니다.

$$ \exists (a_1, \cdots, a_n) \in K^n \setminus \{(0,\cdots, 0)\} \quad \sum^n_{k=1}a_k\mathbf v_k = \mathbf 0$$

일차종속이 아니면 일차독립이라고 합니다. 

# 기저의 예시

- $(1, 0, \cdots, 0), (0, 1, \cdots, 0), \cdots, (0, 0, \cdots, 1)$은 $\mathbb R^n$의 기저를 이룹니다.
- $1$과 허수단위 $i$는 $\mathbb R$ 위의 벡터공간으로서의 $\mathbb C$의 기저를 이룹니다.

# 좌표

벡터공간의 기저가 주어졌을 때, 이 벡터공간의 벡터는 기저들의 선형결합으로 유일하게 표현됩니다. 이때 각 기저 벡터에 곱해지는 스칼라들을 유일하게 결정할 수 있고, 여기에 순서가 주어지면 이를 튜플로 표현할 수 있습니다. 이것을 그 기저에 대한 **좌표**<sub>coordinate</sub>라고 합니다.