---
title: 선형결합과 선형생성
date: 2024-06-30
tags:
  - math
  - linear_algebra
---
# 선형결합

선형결합<sub>linear combination</sub>은 각 [[vector space|벡터]]에 어떤 스칼라를 곱하여 더한 값을 말합니다. 즉, 어떤 스칼라 수열 $a_i$에 대해,

$$ \sum^n_{i=1} a_i\mathbf{v}_i= a_1\mathbf{v}_1 + a_2\mathbf{v}_2 + \cdots + a_n\mathbf{v}_n $$

꼴로 표현되는 벡터를 $\mathbf{v}_1, \mathbf{v}_2, \cdots, \mathbf{v}_n$의 선형결합이라고 말합니다.

# 선형생성

어떤 $S=\{\mathbf v_1, \cdots, \mathbf v_n\}$의 생성은 선형결합들의 집합입니다. 즉,

$$\text{span}(S):=\left\{ \left. \sum^n_{i=1} a_i \mathbf{v}_i \ \right| \  n\in\mathbb{N},a_i\in K, \mathbf{v}_i\in S\right\}$$

입니다.

어떤 벡터공간 $V$의 부분집합 $S$의 생성 $\text{span}(S)$는 $V$의 [[vector space#부분공간|부분공간]]을 이룹니다.