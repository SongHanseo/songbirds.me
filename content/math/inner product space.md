---
title: 내적공간
tags:
  - math
  - linear_algebra
date: 2024-11-28
---
# 정의

[[field|체]] $K$($\mathbb{R}$ 또는 $\mathbb{C}$) 위의 [[vector space|벡터공간]] $V$에 **내적**이 주어지면, 그 공간을 **내적공간**이라고 합니다.

## 내적

이항연산 $\langle \cdot , \cdot\rangle:V \times V \to K$ 가 다음 성질을 만족할 때, 이를 **내적**<sub>inner product</sub>이라고 합니다.

1. Conjugate symmetricity (켤레대칭성)
	- $\langle\mathbf{u}, \mathbf{v}\rangle = \overline{\langle\mathbf{v}, \mathbf{u}\rangle}$ 
2. Linearity in the first argument  (첫 항에 대한 선형성)
	- $\langle a\mathbf u + b\mathbf v, \mathbf w\rangle=a\langle\mathbf u, \mathbf w\rangle+b\langle \mathbf v, \mathbf w \rangle$
3. Positive-definiteness (양의 정부호성)
	- $\mathbf v \ne \mathbf 0 \implies \langle \mathbf v, \mathbf v \rangle > 0$

 또한 1과 2에 의해 다음을 얻습니다.
- Conjugate linearity in second argument (둘째 항에 대한 켤레선형성)
	- $\langle \mathbf u, a\mathbf v + b\mathbf w\rangle = \overline a \langle\mathbf u, \mathbf v \rangle + \overline b\langle \mathbf u, \mathbf w \rangle$

### 예시

벡터공간 $\mathbb C^n$에서 대표적으로 다음과 같은 내적을 정의할 수 있습니다.

$$
\langle \mathbf u, \mathbf v\rangle=\sum_{k=1}^n \mathbf u_k \overline {\mathbf v_k}
$$

이는 위의 세 성질을 모두 만족합니다.

# 직교

내적을 이용하여 **직교**를 다음과 같이 정의합니다.

- $V$ 위의 두 벡터 $\mathbf u$와 $\mathbf v$가 직교함은 $\langle \mathbf u, \mathbf v\rangle=0$과 동치이다.

직교의 기호는 $\perp$입니다. $\mathbf u \perp \mathbf v$와 같이 씁니다.

# 노름

**노름**<sub>norm</sub>은 우리가 벡터의 크기라고 부르는 것을 정의합니다. 노름 또한 내적과 같이 일반화하여 정의할 수 있으나, 여기서는 일단 한 가지 대표적인 예시만을 다루겠습니다.

내적이 주어지면 벡터의 노름 $\|\cdot \|:V\to K$을 다음과 같이 정의할 수 있습니다.

$$
\|\mathbf v\|:=\sqrt{\langle \mathbf v, \mathbf v \rangle}
$$

$\mathbb R^n$에서 이 정의에 위의 내적을 적용하면 정확히 유클리드 공간에서의 길이의 정의와 일치하는 것을 알 수 있습니다.

노름이 주어진 공간을 **노름공간**이라고 합니다. 내적공간에서는 노름을 위의 예시처럼 항상 정의할 수 있으므로, 내적공간은 항상 노름공간입니다.

# 더 알아볼 것

내적공간은 노름공간을 함의하고, 노름공간은 다시 거리공간을 함의합니다. 이외에도 여러 공간들이 만족하는 성질들에 관하여 더 공부하면 재미있을 것 같습니다.
