## 통계적 추정
# 통계학을 배우는 이유?
# 통계학은 실제 전체 집단에 대한 특성을 알고 싶을 때, 그게 현실적으로 가능할까?
# 실제로 전체 집단에 대한 자료를 구한다는 것은 쉽지 않은 일
# 집단 전체가 아닌 일부 표본집단을 통해서 전체에 대해서 추론을 하는 것
# 예시) 선거철 여론조사
# 이런 이유로 우리는 올바른 통계적 추론 방법을 사용하는 것이 매우 중요
#
## 통계적 추정의 종류
# 통계학에서 모집단(population)과 표본(sample)을 구분한다
# - 모집단은 전체 집단
# - 표본집단은 모집단의 일부. 임의표본(Random sample)
#   모집단의 모든 구성원에게 표본에 포함될 기회를 똑같이 주고 추출한 표본
#   특정 단위가 선택될 확률은 다른 단위가 선택될 확률과 독립적이다
#   "독립적이면서도 동일하게 분포된(independent and identically distributed - iid)"
#
# 모집단에서 표본을 얻으면, 그것을 바탕으로 모집단에 대해서 추정하는데, 통계적 추론으로
# 1) 점추정(Point estmation)과 2) 구간추정(interval estmation)이 있다
#
## 점추정
# : 관심을 갖고 있는 숫자, 이를테면 모집단의 평균, 비율 등과 같이 하나의 숫자로 찍는 것을 말함
#   이를 모평균, 모비율로 말하는 방식으로 모집단의 수치를 표시
#   같은 방식으로 표본집단의 평균도 표본평균, 표본비율
#   모집단의 특정 값을 알기 위해서는 표본에서 같은 특정 값을 사용하여 추정하는 것이 많다
#   표본집단의 특정값 예로 점추정하여 모집단의 평균을 구하는 것이다
# 예시) "한국의 20대 여성"이라는 모집단의 키 평균을 추정한다면, 100의 표본을 추출하여
# 키의 표준평균을 계산한 다음 그것을 모평균의 추정치로 사용하는 방식
# 같은 방식으로 모비율에 대한 추정, 표준편차에 대한 추정도 가능하다
#
## 표집오차(sample error)와 표준오차(standard error)
# 모집단에서 임의 표본을 추출한다는 것은 각각의 단위에 뽑힐 기회가 무작위적으로 주어진다는
# 것을 뜻한다. 이는 추출할 때마다 표본이 달라지고 표본의 평균이나 표본비율도 달라질 수 있다
# 이런 현상을 통계학에서는 "표집오차"라 한다
# 이 표집오차로 인해 표본의 평균, 비율은 일치하지 않을 경우가 대부분
# 하지만 일치않는 정도는 어떤 범위 내로 정해져 있을 것이다
# 이 정도를 "표준오차"라 한다. 표준오차가 작은 추정방식일수록 좋은 추정 방식이 된다

## 구간추정
# 위에서 말한 표준오차를 알고 있다면, 구간추정을 할 수 있다
# 점추정의 하나의 숫자를 찍는 것과 달리 구간추정은 모수치가 대략 어디에서 어디 사이에
# 있을 것이라고 예상하게 해줍니다
# 예로 선거에서 특정 후보의 지지율을 단순히 40%라고 하지않고, 38.5 ~ 41.5%에 있다고
# 하는 경우를 구간추정이라고 볼 수 있다. 점추정과 다른 점은 하나의 숫자를 전달하지 않고
# 불확실성의 정도를 함께 전달하고 있어서 더 바람직한 경우가 많다
# 여기서 신뢰구간 또는 신뢰도라는 말을 했다면, 보통 구간추정을 했다는 의미

## 모평균의 추정
# 표본평균은 모평균에 대해서 즐겨 사용한 점추정치로 여러가지 좋은 성질을 갖고 있다
# 1)불편성(unbiasedness)
#  - 모집단에서 추출을 계속하면서 표본평균을 계산한다면, 그 기댓값은 모평균에 일치합니다
#    예로 "20대 한국 여성"이라는 모집단의 키의 평균을 구하는 것을 생각해보자
#    이미 키의 평균은 정해져 있을 것이지만, 정확히 알지 못한다면 모집단에서 임의의 100명씩
#    표본을 추출하여 평균을 계산하는 것을 반복(표본추출은 복원추출)
#    이렇게 1000번을 반복한 다음에 1000개의 평균을 구하면 표본평균의 평균=모평균에 가까워진다
#    불편성은 이렇게 평균을 한없이 모으면 그 값들의 평균은 모평균과 일치한다는 것
#    불편성은 표본평균 모평균에 대한 추정치로 사용할 때 모평균에 비해 작거나 큰 값으로 치우치는
#    경향이 없다는 것을 보장한다. 이 추정치를 불편추정치라고 한다
#    반면에 음이나 양의 방향으로 치우치는 경향이 있는 추정치를 편의추정치라고 한다.
# 2)최소분산(mininum variance)
#  - 표본평균 말고도 모평균에 대해 불편추정치를 만들 수 있는데 자료를 많이 모았다고 하더라도
#    그 중 첫번째 값만 떼어 모평균에 대한 추정치로 사용할 수 있다. 그러면 그 기댓값이나 평균은
#    모평균과 같을 수 있다. 하지만 이런 방식은 표본평균에 의해 변동성이 훨씬 크다
#    수학적인 증명이 있으나 여기서는 단순히 자료가 수가 적다면 정보의 양도 적다는 것을 의미
#    위에 이야기한 표본평균은 모평균에 대한 불편추정치 중 변동성이 가장 작습니다. 이는 모평균과
#    가장 가깝다는 의미이고, 이것을 '최소분산'의 의미가 된다.
#    여기서 분산은 변동성을 측정하는 단위의 하나라고 이해하면 된다

### R을 이용한 표본평균 시뮬레이션
# 모집단이 특정 자료가 아니라 확률분포라 가정
# 확률분포는 자료가 무한히 많은 모집단처럼 간주하기도 한다
# 평균이 170이고 표준편차가 15인 확률분포, N(170, 15^2)을 모집단이라고 생각
# 이 모집단에서 표본평균을 추출하는 작업을 반복하여 값을 구한다

# 난수생성기 시드 고정
set.seed(1234)      # 참고, 시드값은 아무거나 넣어도 상관없음. 대신 같은 값이면 고정된 결과
# 표본평균 개수
n_sim <- 10000
# 각 표본의 크기
sample_size <- 100
means <- c()

for (i in 1:n_sim) {
    data <- rnorm(sample_size, 170, 15)
    means <- c(means, mean(data))
}

hist(means, xlab = "X", ylab = "N", main = "", prob = T, breaks = 50)
curve(dnorm(x, 170, 15 / sqrt(sample_size)), 160, 180, add = T,
lty = 2, lwd = 2, col = "red")

# 출력된 그래프를 확인하면 완벽하진 않지만 표본평규느이 분포는 대략 종형곡선에 가까운 것을 확인할 수 있다
# 이것은 앞에서 말한 표본평균의 분포는 정규분포를 따른다는 '중심극한 정리'의 결과
# 시뮬레이션 횟수를 더 늘리면 곡선이 실제 자료에 점점 더 들어맞게 됩니다.
# 통계학에서는 'fit이 좋아진다'고 한다
# 이 분포의 표준편차는 모집단의 표준편차인 15를 표본의 크기인 100의 제곱근, 즉 10으로 나눈 것과 같다
# 일반적으로 표본평균의 표준편차는 모집단의 표준편차에 비해 "표본의 크기의 제곱근"의 역배수만큼 작다
# 즉 여기서는 표본평균의 표준편차는 1.5가 된다
# 실질적으로 모표준편차를 모르기 때문에 다른 방식으로 추정한 뒤에 그것을 대신 사용한다
#
# 이 시뮬레이션을 하기 전에 표본평균은 모평균의 대한 불편추정치라고 했다
# 이게 사실이면 표본평균의 평균은 모평균에 매우 가까워야 한다
#
# 위 시뮬레이션에서 표본평균의 평균을 구하면,
mean(means)         # [1] 170.0066
# 표본평균의 평균 = 모평균

# 또한, 정규분포는 매우 유용한 성질을 갖고 있다
# 평균에서 +-(2 x 표준편차) 영역안에 95%가량의 가료가 포함된다는 것
# 이경우 표본평균의 경우에도 (2 x 표준오차) 라고 할 수 있다

se <- 15 / sqrt(sample_size)
means_within_2se <- (means > 170 - 2 * se) & (means < 170 + 2 * se)
sum(means_within_2se)

# standard error는 표준편차를 각 표본의 크기에 대한 루트값으로 나눈 것
# 위에서 계산한 것 같이 1.5
# 표본평균이 위에 170 +-(2x표준오차) 안에 포함되는지 여부를 알아본 뒤
# means_within_se2에 저장. 결과가 TRUE 혹은 FALSE가 저장
# 각각의 TRUE는 1로, FALSE는 0으로 취급되고, 이들을 합을 구하면 전체 시행 횟수에 따라
# 얼마나 TRUE가 나왔는지를 알 수 있음
# 그값은 약 95.14%로 95%라는 값과 대략 일치하는 것을 알 수 있다

## 모평균에 대한 구간추정
# 표본평균이 정규분포를 따른다는 것은 수학적 증명이 시뮬레이션으로 확인했다
# 이것을 통계학적으로 표현하면 자료가 평균이 m 표준편차가 s인 어떤 분포를 따른다고 한다면
# 이 분포의 크기인 n이 표본을 추출하여 표본평균을 구하는 일을 반복할 때,
# n이 커짐에 따라 표본평균은 근사적으로 다음과 같은 정규분포를 따른 것으로 알려져 있다
# N(m, s^2/n)       # nolint   
# 표본평균의 분산, s^2/n은 자료의 크기에 반비례하여 작아진다

# 이 사실을 활용하여 다음이 성립할 수 있다
# 표본평균 = X      # nolint
# P(m - 2 x s/sqrt(n) < X < m + 2 x s/sqrt(n)) ~= 0.95
# 표본평균이 모평균으로부터 +-(2*표준오차) 안에 있을 확률은 95%이다를 수학적으로 표현
#
# 첫번째 부등식, m - 2 x s/sqrt(n) < X 을 m에 관해 정리하면
# m < X + 2 x s/sqrt(n)
# 두번째 부등식, X < m + 2 x s/sqrt(n) 을 m에 관해 정리하면
# m > X - 2 x s/sqrt(n)
# 이를 합치면
# => X - 2 x s/sqrt(n) < m < X + 2 x s/sqrt(n)
#
# P(X - 2 x s/sqrt(n) < m < X + 2 x s/sqrt(n)) ~= 0.95

# 여기서 "무작위"인 것, 즉 표본을 추출할 때마다 달라지는 것은 모평균이 아니라 표본평균
# 임을 주목. 위에 평균 m이고, 표준편차가 s인 모집단의 표본평균을 계속 모으면
# 그 중 95%에서 m은 평균에서 (2x표준오차)안에 들어온다는 것을 의미하게 된다
#
# 신뢰구간은 이와 같이 표본평균 +-(2x표준오차)는 모평균에 대한 95% 신뢰구간이라고 한다
# 이것은 달리 말하면, 모집단에서 계속 표집하면서 95%신뢰구간을 만들면 그 중에 95%는 모평균을
# 포함한다는 것을 의미함

# R로 95% 신뢰구간의 성질 확인하기
set.seed(1234)
# 표본평균 개수
n_sim <- 10000
# 각 표본의 크기
sample_size <- 100
m <- 170
s <- 15
se <- s / sqrt(sample_size)
x_bar_in_CI <- c() # nolint

for (i in 1:n_sim) {
    data <- rnorm(sample_size, m, s)
    x_bar <- mean(data)
    if ((x_bar - 2 * se < m) & (x_bar + 2 * se > m)) {
        x_bar_in_CI <- c(x_bar_in_CI, TRUE)         # nolint
    } else {
       x_bar_in_CI <- c(x_bar_in_CI, FALSE)         # nolint
    }
}

# 신뢰구간 안에 모평균이 포함된 비율
mean(x_bar_in_CI)

### 신뢰구간의 사용에 대한 팁
# - 지금까지 이야기한 모평균에 대한 95% 신뢰구간은 표본평균에 대해 대칭
#  따라서 양 끝 값을 더한 뒤 2로 나누면 표면평균이 얼마인지 알 수 있다
# - 신뢰도가 높아질수록 구간의 길이는 길어집니다
#  높은 확률로 모평균을 잡아내려면 신뢰구간을 넓게 잡아야 그 안에 떨어질 확률이 높아진다
#  하지만 신뢰구간의 길이가 길수록 신뢰구간 자체의 유효성은 떨어진다
#  즉, 신뢰가 높다고해서 꼭 좋은 것은 아니다
# - 신뢰도로 추정할 때 표본크기가 커질수록 신뢰구간의 길이는 짧아집니다
#  수학적으로 신뢰구간의 길이는 표준오차에 비례하게 된다. 모평균에 대한 95% 신뢰구간의 경우
#  대략 (4x표준오차) 정도 된다. 그런데 표준오차 자체가 모표준편차를 sqrt()로 나눈 것이고,
#  n이 커질수록 표본오차가 작아지기 때문에 결국 신뢰구간의 길이도 짧아지게 된다.
#  직관적으로 표본 크기를 늘릴수록 신뢰구간의 길이는 짧아지게 되고 이는 더 정밀한 구간 추정을
#  할 수 있다


### 부트스트랩
# 현대 통계학자들이 진보된 계산 기술을 받아들여 기존 수학 공식을 이용한 방식이 잘 통하지 않는
# 경우에 폭넓게 적용할 수 있는 보다 강력한 추론기법을 의미함
# 부트스트랩을 활용하면 앞에서 살펴봤던 신뢰구간 공식이든 뭐든 사용하지 않고,
# 컴퓨터 시뮬레이션만으로도 평균을 추정하고, 신뢰구간을 만들 수 있다.

## 부트스트랩 원리
# 앞서 관심을 가진 모집단, "20대 한국 남성" 이런 모집단에 전수 자료에 접근할 수 없기 떄문에
# 표본을 추출하고 그것을 가지고 통계적 추정을 한다고 이야기했음
# 모집단의 대한 특정 가정하에서 표본을 계속 추출한다고 했을 때 실제로 관측한 표본이 그 중에 어느 위치에
# 있는 지를 생각했었다
# 이런 발상을 전환하여 우리가 갖고있는 표본 자체가 일종의 모집단인 것처럼 여길수는 없을까
# 이 가정을 받아들인다면 그 가상의 모집단에서 계속 표본추출하여 평균을 계산하고
# 그것들을 모아 분포를 만들 수 있을 것이다. 이것을 '부트스트랩'이라 한다.
#
# 장점
# 추정에 필요한 수학공식을 모르거나 애초에 존재하지 않아도 관심이 있는 대상, 즉 평균이나 중앙값 등에 대한
# 분포를 만들고 신뢰구간도 만들 수 있다
# 표본평균의 경우 표본평균이 중심극한정리에 의해 근사적으로 정규분포애 따른다는 점을 이용하여
# 95% 신뢰구간을 만들때 표본평균(+=)2*표준오차 공식을 이용
# 중심극한정리가 적용되지 않는 대상, 또는 구간추정공식을 모르는 대상에 대해서는 적용할 수 없다
# 부트스트랩을 사용하면 신뢰구간을 간편하게 얻을 수 있다

# R에 내장된 데이터세트를 이용하여 부트스트랩 방식을 실습
# 자료는 붓꽃(iris)
class(iris)
head(iris)

# 모평균 추정하기
# 데이터셋으로 5가지 변수(꽃잎길이, 너비, 꽃받침 길이, 너비, 종)를 갖고 있다
# 여기서는 종이 setosa종의 꽃잎 길이의 모평균에 대해서 점추정과 구간추정을 해봅니다
iris$Petal.Length
# 꽃잎 길이 변수는 데이터셋 안에 Petal.Length라는 이름으로 저장되어 있다
# 추정 공식을 사용하면 모평균에 대한 점추정치는 표본평균과 같고, 구간 추정친느 이것에
# (2x표준오차)를 더하거나 뺀 것으로 만들 수 있다.
# 여기 예제는 sqrt(50)으로 나눈 것과 같다
# 여기서 한가지 주의할 점은 앞에서 보았던 예제들은 모집단의 표준편차를 정확히 안다고 가정했다
# 지금 setosa종의 모표준편차를 안다고 가정할 수 없다.
# 그러므로 여기서는 표본에서 추정한 표준편차를 사용한다.
# 정규분포 추정공식을 바로 이용할 수 없다. 이렇게 되면 정규분포를 근사하는 분포인 t분포를 사용
# 하지만 t분포는 표본크기가 충분히 크면 정규분포에 가까워지고 이를 적용가능하지만 현재는 관심 x
# 정규분포 추정공식을 사용할 것이다

# 먼저 setosa종의 자료만 따로 추출하기
# 이때에 실행함수는 subset()을 사용한다. subset()은 부분집합을 만들어 저장하는 의미
y <- subset(iris, Species == "setosa")$Petal.Length
# 모평균에 대한 점추정치
mean(y)
# 95% 신뢰구간을 만들어 본다. 그러기 위한 표준편차를 구해야 한다.
# R은 표준편차(Standard deviation)를 구하는 함수를 갖고 있다. sd()
sd(x = y)
# 이제 이 값을 당분간 모표준편차처럼 사용. 표준오차를 구하고 신뢰구간을 만드려면 담과 같이 처리
n <- length(y)
ci_lower <- mean(y) - 2 * sd(y) / sqrt(n)
ci_upper <- mean(y) + 2 * sd(y) / sqrt(n)
print(ci_lower)
print(ci_upper)

# 이제 모평균에 대한 구간 추정 공식을 모른다고 치고, 부트스트랩 방식으로 추정(**)
# 앞에서 부트스트랩은 가상의 모집단인 표본에서 반복 추출하는 방식이기 때문에
# 이를 위한 시뮬레이션 코드를 작성해야 한다
n_sim <- 10000
means <- c()

for (i in 1:n_sim) {
    bs_sample <- sample(y, length(y), replace = T)
    sample_mean <- mean(bs_sample)
    means <- c(means, sample_mean)
}
head(means, 12L)

# 여기서 중요한 것은 sample입니다
# 첫번째 입력값인 y로부터 무작위로 표본추출을 하는데, 그 표본의 크기가 두번째 입력값과 같다
# 여기서 부트스트랩에서 중요한 것은 원자료에서 표본을 추출할 때 정확히 같은 크기만큼 추출해야함
# 세번째로 replace = TRUE로 복원추출을 해야 한다는 것(필수)
#
# 이렇게 구해진 means를 이용하여 신뢰구간을 만들 수 있다.
# 95% 신뢰구간은 값들을 정렬했을 때 가운데의 95%에 해당하는 값들의 범위를 의미합니다
# 이것은 상위, 하위 2.5%에 해당하는 값들을 찾으면, 그것들로 신뢰구간의 상한, 하한을 구할 수 있다
# 이때 사용하는 함수가 quantile()이다
# 이 함수는 자료를 작은 것부터 큰 것 순으로 나열할 때 주어진 비율에 해당하는 값이 무엇인지 알 수있다

quantile(means, .025)   # 하위 2.5%를 의미함
quantile(means, .975)   # 상위 2.5%를 의미함
# 결과적으로 95% 신뢰구간인 1.41, 1.51과 거의 일치
# 부트스트랩은 수학적인 공식을 전혀 사용하지 않고, 오로지 컴퓨터와 시뮬레이션으로도 추정했다


## t분포
# : 모표준편차를 모를 때 표준정규분포 대신에 사용하는 일종의 근사값
# t분포는 표준정규분포와 매우 비슷하다. 종형 모양에 가깝고 0에 대해 대칭적이지만
# 분포 끝 부분에 더 많은 자료가 흩어져 있다는 것이 특징이다
# 이는 꼬리의 두께는 자유도(degree of freedom)에 의해 결정되고 정규분포가 평균과 표준편차 2개의 값으로
# 결정되는 것과 달리 t분포는 자유도만으로 결정된다
# 자유도는 낮을수록 꼬리가 두껍고 높을수록 얇아져 t분포는 결국 표준정규분포에 가까워진다
# t분포의 자유도는 표본크기에서 1을 뺀 것 n-1과 같다
# 다시 95% 구간을 추정할 수 있다
# t분포의 상한과 하한을 구하기 위해서 qt()를 사용
y <- subset(iris, Species == "setosa")$Petal.Length
n <- length(y)
c(mean(y) + qt(.025, df = n - 1) * sd(y) / sqrt(n),     #       하한     상한
  mean(y) + qt(.975, df = n - 1) * sd(y) / sqrt(n))     # [1] 1.412645 1.511355

## 부트스트랩으로 모표준편차 추정하기
# 추정공식을 모르는 대상에 대해서 구간추정하는 것을 확인한다. 모표준편차
y <- subset(iris, Species == "setosa")$Petal.Length
n_sim <- 10000
sds <- c()

for (i in 1:n_sim) {
    ds_sample <- sample(y, length(y), replace = T)
    sample_sd <- sd(ds_sample)
    sds <- c(sds, sample_sd)
}


c(quantile(sds, 0.025), quantile(sds, .975))

## 구간추정공식을 이용한 결과 확인
sqrt(var(y) * (n - 1) / qchisq(.975, n - 1))
sqrt(var(y) * (n - 1) / qchisq(.025, n - 1))

## 공식에 의한 값은 실제로 부트스트랩을 사용한 경우와 비교했을 때 큰 차이가 나지 않는다
# 이는 각종 수학적 가정과 표본크기 등의 문제 때문에 복잡하니 생략
# 구간 추정법을 모르는 대상도 점추정법만 알면 복원 추출을 통해 구간추정을 할 수 있다