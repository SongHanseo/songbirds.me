---
date: 2024-06-25
title: 체
tags:
  - math
  - abstract_algebra
---
**체**는 다음과 같은 성질을 만족하는 집합과 두 이항연산 $(F,+,\cdot\ )$을 말합니다.

- 덧셈 $+$에 관한 성질:
	- A1: $\forall a, b \in F\quad a+b=b+a$ (덧셈의 교환법칙)
	- A2: $\forall a, b, c \in F \quad (a+b)+c = a+(b+c)$ (덧셈의 결합법칙)
	- A3: $\exists 0_F \in F \quad \forall a \in F \quad 0_F+a=a+0_F=a$ (덧셈의 항등원의 존재성)
	- A4: $\forall a \in F \quad \exists -\!a \in F \quad a + (-a) = 0_F$ (덧셈의 역원의 존재성)
- 곱셈 $\cdot\;$에 관한 성질:
	- M1: $\forall a, b \in F \quad a \cdot b = b \cdot a$ (곱셈의 교환법칙)
	- M2: $\forall a, b, c \in F \quad (a \cdot b)\cdot c = a \cdot (b \cdot c)$ (곱셈의 결합법칙)
	- M3: $\exists 1_F \in F \quad \forall a \in F \quad 1_F \cdot a = a \cdot 1_F = a$ (곱셈의 항등원의 존재성)
	- M4: $\forall a \in F\setminus \{0_F\} \quad \exists a^{-1} \in F \quad a * a^{-1} = 1_F$ (곱셈의 역원의 존재성)
- 덧셈과 곱셈에 관한 성질:
	- D: $\forall a, b, c \in F \quad a \cdot (b+c)=a \cdot b + a \cdot c$ (덧셈과 곱셈의 분배법칙)

간단히 말해 사칙연산이 실수와 같이 잘 정의되는 대수적 구조입니다. 대표적으로는 유리수, 실수, 복소수, 유한체 등이 있습니다.