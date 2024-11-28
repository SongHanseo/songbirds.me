---
title: 내적공간
tags:
  - math
  - linear_algebra
date: 2024-11-28
draft: "true"
---
# 정의

[[field|체]] $F$($\mathbb{R}$ 또는 $\mathbb{C}$) 위의 어떤 [[vector space|벡터공간]] $V$에 **내적**이 주어지면, 그 공간을 **내적공간**이라고 합니다.

## 내적

이항연산 $\langle \cdot , \cdot\rangle:V \times V \to F$ 가 다음 성질을 만족할 때, 이를 내적이라고 합니다.

- Conjugate Symmetry (켤레대칭성)
	- $\langle\mathbf{u}, \mathbf{v}\rangle = \overline{\langle\mathbf{v}, \mathbf{u}\rangle}$ 
- Linearity (선형성)
	- $\langle a\mathbf u + b\mathbf v, \mathbf w\rangle=a\langle\mathbf u, \mathbf w\rangle+b\langle \mathbf u, \mathbf w \rangle$
- Positive-definiteness (양의 정부호성)
	- $\mathbf v \ne \mathbf 0 \Rightarrow \langle \mathbf v, \mathbf v \rangle > 0$

