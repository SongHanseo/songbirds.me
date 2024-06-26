---
title: 벡터공간
tags:
  - math
  - linear_algebra
date: 2024-06-26
---
# 정의

어떤 [[field|체]] $K$에 대하여, 어떤 집합 $V$가 벡터합($+:V\times V \to V$)과 스칼라곱($\ \cdot:K \times V \to V$)이 정의되어 다음의 성질들을 만족할 때 이러한 $V$와 같은 집합을 **체 $K$ 위의 벡터공간**<sub>Vector space </sub>이라고 하고, 그 원소들을 **벡터**<sub>Vector</sub>라고 합니다.

## 성질

- 벡터합 $+$에 관한 성질
	- $\forall \mathbf{u}, \mathbf{v}, \mathbf{w} \in V \quad (\mathbf{u}+\mathbf{v})+\mathbf{w} = \mathbf{u}+(\mathbf{v}+\mathbf{w})$ (벡터합의 결합법칙)
	- $\forall \mathbf{u}, \mathbf{v} \in V \quad \mathbf{u}+\mathbf{v}=\mathbf{v}+\mathbf{u}$ (벡터합의 교환법칙)
	- $\exists \mathbf{0} \in V \quad \forall \mathbf{v} \in V \quad \mathbf{0} + \mathbf{v} = \mathbf{v}$ (벡터합의 항등원의 존재성)
		- 이러한 $\mathbf{0}$를 **영벡터**라고 부릅니다. 영벡터의 유일성은 [[field#항등원의 유일성|이항연산의 항등원의 유일성]]을 적용해 보일 수 있습니다.
	- $\forall \mathbf{v} \in V \quad \exists -\mathbf{v} \quad \mathbf{v} + (-\mathbf{v})=\mathbf{0}$ (벡터합의 역원의 존재성)
		- 역원의 유일성도 마찬가지로 [[field#역원의 유일성|이항연산의 역원의 유일성]]을 적용해 보일 수 있습니다.
- 스칼라곱 $\cdot\;$에 관한 성질
	- $\forall a, b \in K \quad \forall \mathbf{v} \in V \quad (a \cdot b) \cdot \mathbf{v} = a \cdot (b \cdot \mathbf{v})$ (곱셈과 스칼라곱의 *Compatibility*??)
	- $\forall \mathbf{v} \in V \quad 1_K \cdot \mathbf{v} = \mathbf{v}$ (곱셈의 항등원은 스칼라곱의 왼쪽 항등원)
- 분배법칙
	- $\forall a \in K \quad \forall \mathbf{u}, \mathbf{v} \in V \quad a\cdot (\mathbf{u} + \mathbf{v}) = a \cdot \mathbf{u} + a \cdot \mathbf{v}$ (벡터합과 스칼라곱의 분배법칙)
	- $\forall a, b \in K \quad \forall \mathbf{v} \in V \quad (a+b)\cdot \mathbf{v} = a \cdot \mathbf{v} + b \cdot \mathbf{v}$ (덧셈과 스칼라곱의 분배법칙)