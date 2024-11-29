---
draft: "true"
title: 이산 푸리에 변환
---
# 정의

**푸리에 변환**은 어떤 주기함수를 주파수 성분으로 분해하는 변환입니다. 본래 연속함수를 그 대상으로 삼지만 여기서는 복소수 수열을 대상으로 하는 **이산 푸리에 변환**을 설명합니다.

이산 푸리에 변환 $\mathcal F : \mathbb C^N \to \mathbb C^N$은 $\mathbf x := (\mathbf x_0, \cdots, \mathbf x_{N-1})$를 다음과 같은 $\mathbf X:=(\mathbf X_0, \cdots, \mathbf X_{N-1})$로 변환하는 사상입니다.

$$
\mathbf X_k = \sum^{N-1}_{n=0}\mathbf x_n\cdot e^{-2\pi i kn / N}
$$

네? $e$... 뭐라고요?

## 1의 거듭제곱근

$e^{-2\pi i/ N}$은 1의 $N$-거듭제곱근입니다. 오일러 공식을 생각하면 복소평면상에서 이것의 제곱, 세제곱, 네제곱, ... $N$제곱은 단위원을 $N$등분하고 시계방향으로 한 바퀴 도는 것을 알 수 있습니다. 이것을 간단하게 $\omega_N$이라고 쓰겠습니다.

$$
\omega_N:=e^{-2\pi i/N}=\cos(-2\pi /N)+i\sin(-2\pi/N)
$$

푸리에 변환의 $e$ 어쩌고 항을 이것으로 다시 쓰면 $\omega_N^{kn}$이 됩니다. 식을 해석해보자면 $k$를 고정시키고 $n$을 1씩 증가시키는데, 이는 즉 단위원을 $N$등분하고 $k$씩 건너뛰며 회전하는 것을 의미합니다. 그럼 당연히 돌아가는 바퀴수도 $k$배로 늘어나게 됩니다. 잠시 *이산*을 잊고 이를 연속적으로 생각해봅시다. **n이 커진다는 것은 주파수를 n배로 키우는 것과 같습니다.**

# 선형성

전체 식을 다시 써 봅시다.
$$
\mathbf X_k = \sum^{N-1}_{n=0}\omega_N^{kn}\cdot\mathbf x_n
$$
어디서 많이 본 꼴의 식 아닌가요? 맞습니다. **행렬곱으로 표현할 수 있습니다.**

$$
\mathbf X=\begin{bmatrix}
\mathbf X_0 \\ \mathbf X_1 \\ \vdots \\ \mathbf X_{N-1}
\end{bmatrix} = 
\begin{bmatrix}
\omega_N^{0\cdot 0} & \omega_N^{0\cdot 1} & \cdots &\omega_N^{0\cdot (N-1)} \\
\omega_N^{1\cdot 0} & \omega_N^{1\cdot 1} & \cdots &\omega_N^{1\cdot (N-1)} \\
\vdots & \vdots & \ddots & \vdots \\
\omega_N^{(N-1)\cdot 0} & \omega_N^{(N-1)\cdot 1} & \cdots &\omega_N^{(N-1)\cdot (N-1)} \\
\end{bmatrix}
\begin{bmatrix}
\mathbf x_0 \\ \mathbf x_1 \\ \vdots \\ \mathbf x_{N-1}
\end{bmatrix}
= \mathbf F \mathbf x
$$

이산 푸리에 변환은 행렬로 나타낼 수 있는 선형변환입니다. 또 [[inverse of matrix|역행렬]]을 구해 역변환을 유도할 수 있습니다. 이 행렬 $\mathbf F$의 성질로 다음의 식이 성립합니다.

$$
\mathbf F^{-1}={1\over N}\mathbf F^*=\begin{bmatrix}
\omega_N^{-0\cdot 0} & \omega_N^{-0\cdot 1} & \cdots &\omega_N^{-0\cdot (N-1)} \\
\omega_N^{-1\cdot 0} & \omega_N^{-1\cdot 1} & \cdots &\omega_N^{-1\cdot (N-1)} \\
\vdots & \vdots & \ddots & \vdots \\
\omega_N^{-(N-1)\cdot 0} & \omega_N^{-(N-1)\cdot 1} & \cdots &\omega_N^{-(N-1)\cdot (N-1)} \\
\end{bmatrix}
$$

따라서 **푸리에 역변환**을 다음과 같이 유도합니다.

$$
\mathbf x_n={1\over N} \sum_{k=0}^{N-1}\omega_N^{-kn}\cdot\mathbf X_k
$$

푸리에 변환과 거의 동일합니다! 심지어 정의에 따라 행렬에 $1\over \sqrt N$을 곱하여 유니타리 작용소로 만드는 경우도 있습니다.

# 선형대수학적 접근

지금까지는 드라이하게 사실을 나열했는데, 여기서는 우리가 원하는 것이 뭔지, 거기서부터 푸리에 변환이 어떻게 유도되는지를 설명해보겠습니다.

우리가 원하는 것은 수열 $\mathbf x$를 주기 $N$의 주기함수로 보고 2배, 3배 주파수의 정현파 성분으로 분해한 것입니다. 즉 푸리에 역변환 공식

$$
\mathbf x_n={1\over N} \sum_{k=0}^{N-1}e^{2\pi i kn/N}\cdot\mathbf X_k
$$

를 만족하는 $\mathbf X$를 찾는 것입니다.

이는 **기저 변환**을 생각하게 합니다. 위를 달리 말하면, 표준 기저$((1,0,\cdots, 0), (0, 1, \cdots, 0), \cdots, (0, 0, \cdots, 1))$기준의 수열 $\mathbf x$를 주파수 성분 $((e^{2\pi i k/N}), (e^{2\pi i 2k/N}), \cdots, (e^{2\pi i (N-1)k/N}))$으로 기저를 변환하여 좌표를 새로 매기는 것입니다.

주파수 성분이 기저를 이룸은 삼각함수의 직교성에서 알 수 있습니다.