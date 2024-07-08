---
title: 선형사상
date: 2024-07-07
tags:
  - math
  - linear_algebra
---
# 정의

**선형사상**<sub>linear map</sub>은 [[vector space|벡터공간]] 사이의, *선형성*을 만족하는 함수입니다.

체 $K$ 위의 벡터공간 $V$와 $W$ 사이의 어떤 함수 $T: V \to W$가 다음을 만족할때, 이를 선형사상이라고 합니다.

- $\forall \mathbf u, \mathbf v \in  V \quad T(\mathbf u + \mathbf v)=T(\mathbf u) + T(\mathbf v)$ (가산성)
- $\forall a \in K \quad \forall \mathbf v \in V \quad T(a\mathbf v)=aT(\mathbf v)$ (동차성)

더 일반적으로는, 이러한 성질을 선형성이라고 하고, 선형성을 갖는 함수가 선형이라고 합니다.

# 핵과 상

선형사상 $T$의 **핵**<sub>kernel</sub> $\text{ker}(T)$는 $T$에 의해 영벡터로 보내지는 벡터들의 집합입니다.

$$
\text{ker}(T) := \{\mathbf v \in V\ |\ T(\mathbf v)=\mathbf 0_W\}
$$

선형사상 $T$의 **상**<sub>image</sub> $T(V)$는 $V$의 원소들이 $T$에 의해 변환된 벡터들의 집합입니다.

$$
T(V) := \{T(\mathbf v) \ | \ \mathbf v \in V\}
$$

핵은 $V$의, 상은 $W$의 [[vector space#부분공간|부분공간]]을 이룹니다.