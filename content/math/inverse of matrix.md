---
title: 역행렬
tags:
  - math
  - linear_algebra
date: 2023-09-25
---
역행렬은 행렬의 곱셈의 역원입니다. 어떤 정방행렬 $A$에 대해 $AB=I$를 만족하는 행렬 $B$가 존재할 때, $B$를 $A$의 역행렬이라고 하고, $A^{-1}$와 같이 나타냅니다.
# 정칙행렬
어떤 정방행렬의 행렬식이 0이 아닐 때, 이 행렬을 **정칙행렬**이라고 합니다. 어떤 행렬이 정칙행렬임은 역행렬을 가질 필요충분조건이므로 **가역행렬**이라고도 합니다.

# 구하는 방법
## 가우스 소거법
어떤 정방행렬 $A$가 주어졌을 때, 이와 단위행렬 $I$를 붙여 첨가행렬 $(A|I)$를 구성해줍니다. 그 후, 기본 행연산을 수행하여 좌측의 행렬을 단위행렬로 만들면, 우측의 행렬은 $A^{-1}$이 됩니다. 

## 고전적 수반 행렬
고전적 수반 행렬<sub>adjugate matrix, 또는 classical adjoint matrix</sub>은 어떤 정방행렬의 [[determinant#여인수|여인수]]를 성분으로 가지는 여인수 행렬 $C$의 전치행렬입니다. 어떤 정방행렬 $A$의 고전적 수반 행렬을 $adj(A)$와 같이 씁니다. 즉,
$$
adj(A)_{ij}=(C^T)_{ij}=C_{ji}=(-1)^{i+j}M_{ji}
$$
입니다. 이때 정칙행렬 $A$에 대해 
$$
\displaystyle A^{-1}=\frac{1}{det(A)} adj(A)
$$
이 성립함이 알려져 있습니다.

특히 $2\times 2$행렬을 예로 들면, $A=\begin{bmatrix}a&b\\c&d\end{bmatrix}$에 대해서 $adj(A)=\begin{bmatrix}d&-b\\-c&a\end{bmatrix}$이고, $A$가 정칙행렬이라면 $A^{-1}=\displaystyle\frac1{det(A)}adj(A)=\frac1{ad-bc}\begin{bmatrix}d&-b\\-c&a\end{bmatrix}$입니다.