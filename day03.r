## 확률
# 확률은 경우의 수에서 생각할 수 있는 모든 경우의 수 중에
# 우리가 관심을 갖는 경우의 수가 차지하는 비율로 생각할 수 있다

# (용어)
# 시행: 다양한 결과가 나올 수 있는 어떤 것을 실제로 하는 것을 말함
#       ex) 주사위를 던진다, 복권을 긁는다 등등
# 표본공간: 가능한 모든 결과의 모임
#           예로 동전을 던지기의 경우 한번 던지면 {앞, 뒤}
#           두번 던지면 {(앞, 앞) (앞, 뒤) (뒤, 앞) (뒤, 뒤)}
# 사건: 가능한 결과 중 어떤 요구 사항을 만족하는 것,
#       로또 복권 추첨 결과 "여섯개의 숫자가 연속이다", "모두 홀수가 나온다"
#       중요한 것은 단 하나의 결과를 의미하지 않을 수도 있다
# 배반사건: 동시에 일어날 수 없는 두 사건의 관계를 배반사건이라고 한다
# 여사건: 어떤 사건이 일어나지 않는 것을 말한다
# 수학적으로는 이들을 모두 집합으로 표현할 수 있다
# 사건은 표본공간의 부분집합으로 정의
# 공집합도 표본공간의 부분집합이기 때문에 사건이다

## 수학적 확률
# 수학적인 확률은 어떤 가능한 모든 결과의 개수로 표현할 수 있다
# 주사위를 두 번 던졌을 경우 모든 경우의 수는 6*6=36,
# 두 값을 곱했을 때 홀수가 나온다 = 두 번 모두 홀수여야 한다 3*3=9
# 수학적 확률 = 9/36 = 0.25 = 25%
# 다만 전제는 표본공간의 모든 경우가 나올 수 있는 가능성은 같아야한다

## 통계적 확률
# 통계적 확률은 수학적 확률에 비해 더 구체적으로 접근한다. 통계적 확률은
# "전체 시행 횟수 중 특정 사건이 일어나는 횟수의 비율로 표현"
# 전체 시행 횟수를 n이라하고 했을 때에 특정 사건이 일어날 횟수를 r이라고 하면
# 그 사건이 일어날 비율은 r/n
#   일반적으로 통계적 확률은 수학적 확률과 정확히 일치하지 않는다
#   대신 횟수를 무한히 늘이면 통계적 확률은 수학적 확률에 근접하게 된다

## 극한의 의미
# 통계적 확률이 수학적 확률에 한없이 가까워 진다는 이야기는
# 시행 횟수가 무한정 늘어나는 극한을 가정하기 때문이다
# 첫번째 시행횟수를 무한히 늘였을 때 수학적 확률에 통계적 확률이 근접한다
# 하지만 시행 횟수가 적다면 우연에 의해서 수학적 확률에 벗어나는 경우가 종종 생긴다
# 통계학에서는 이를 표집오차(Sampling Error)라 한다
# 표집오차는 시행횟수가 늘어날수록 점점 줄어드는 성질을 갖고 있다. 결국에는 0에 매우 가까워지게 된다.
# 두번째 한없이 가까워진다. 가까워진다는 말은 두가지 의미를 포함
# 수학적 확률과 통계적 확률간의 차이가 0에 가까워진다는 것이지 0이 된다는 것이 아니다

## 큰 수의 법칙(Law of large number)
# 실제 자료의 값으로 계산한 평균(표본평균)이 자료에 크기가 커짐에 따라 한없이 특정 값에 가까워 진다는 것을 말함
# 여기서 특정값은 확률용어로 기대값(Expected Value)을 말함
# 통계적 확률은 큰 수의 법칙의 특수한 경우에 지나지 않는데 이유는 비율 자체가 일종의 표본평균이기 때문
# 특정값이 나오는 결과값의 합에 시행횟수로 나누면 이건 통계적확률이 되고, 이것은 기록된 값의 평균이기도 하다
# 애초 평균이란 자료의 총합을 자료의 개수로 나눠준 것이기 때문이다
# 시행횟수가 많아짐에 따라 성공비율 또는 통계적 확률은 기대값에 가까워진다는 것을 알 수 있다
# 기대값은 수학적확률이다

# 동전을 5번 던졌을 때의 경우
# 앞:1 뒤:0
# 시행 값 : 1 0 0 0 1
# 총합 : 2
# 평균 : 2/5 = 0.4  # nolint

# 동전을 20번 던졌을 때의 경우
# 앞:1 뒤:0
# 시행 값 : 1 0 0 1 0 1 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1
# 총합 : 11
# 평균 : 11/20 = 0.55  # nolint

## R을 이용한 시뮬레이션
# 동전던지기의 결과는 가능한 경우 두가지, 앞 또는 뒤 (여사건 관계)
# 따라서 앞면이 나올 확률만 정하면 뒷면이 나올 확률은 (1-앞나올확률)이다
# 이 떄 확률을 P라고 하고, 이렇게 가능한 결과는 두 개 밖에 없고, 성공 확률이 정해져 있는 확률 시행을
# "베르누이(Bernoulli trial) 시행" 이라고 한다

# R에서 사용하는 베르누이 시행 함수 : rbinom()
# r의 의미는 랜덤. R에서 확률적 난수를 생성하는 것을 의미하는 것으로 사용
# binom은 우리말로 이항이라고 번역되는 binomial단어의 축약형
# 베르누이 시행은 이항시행의 일종이다. 차이는 베르누이시행에서는 한번만, 이항시행은 여러번 할 수 있다

## rbinom() : 함수형식 # nolint
# rbinom(시행횟수, 값의 크기, 성공 확률)
# 동전던지기: 5번 던진 결과, 그 확률 0.5
x <- rbinom(n = 10, size = 1, prob = 0.49999999)
mean(x)

# 수학적확률로 확률문제 풀기
# 문제 1~5까지 숫자카드를 잘 섞어서 세 장의 카드를 뽑아 세자리의 숫자를 만들 때
# 그 결과가 320보다 클 확률은? 33/60 = 0.55
# 12 + 12 + 9 = 33  # nolint
# 321 324 325
# 341 342 345
# 351 352 354

# 통계적 확률로 문제풀기 : 시뮬레이션
# 수학적 내용을 알지 못해도 풀 수 있는 방법이 존재
# 시행횟수가 늘어남에 따라 통계적 확률은 수학적 확률에 한없이 가까워 진다는 사실을 이용
# 이 경우 모든 경우의 수를 다 검토해야하는 수고를 하지 않을 수 있고,
# 특히 경우의 수를 세기가 매우 복잡한 문제에서 유용하게 사용

## 시뮬레이션 시행 R프로그램을 이용하여 1~5까지의 숫자 3개를 뽑아서 그 값이 320보다 큰
# 경우를 구하는 시뮬레이션 진행할 수 있다
# = 몬테카를로 시뮬레이션
# 시행을 위해서 R에서 따로 프로그램을 하지 않아도 된다. sample()이라는 함수가 존재

# sample(추첨할 대상, 추첨할 개수, 복원 추출여부)
simul <- 100000
sucess <- 0
for (i in 1:simul) {
    x <- sample(x = 1:5, size = 3, replace = FALSE)
    if (x[1] >= 4) sucess <- sucess + 1
    if ((x[1] == 3) & (x[2] >= 2)) sucess <- sucess + 1
}
print(sucess)
stc <- sucess / simul
stc

## 몬테카를로 방법을 사용하여 원주율 계산
# 원주율 : 3.14...
# 시뮬레이션을 통해서 원주율을 구하고, 실제 원주율과 비교
# 1. x축과 y축을 중심으로 2차원 좌표평면을 생각합니다
# 2. 가로축과 세로축의 길이가 1인 정사각형을 생각합니다
# 3. 이 정사각형의 원점을 중심으로 반지름이 1인 원을 그리면 온전한 원이 아닌 1/4인 사분원이 된다
# 4. 가로 세로로 길이1인 정사각형에 매우 작은 입자를 뿌린다 생각합니다
# 5. 무작위로 뿌릴 떄 원점으로부터 거리가 1 이내면 원안에 위치하고 1보다 크면 원밖이라고 생각합니다
# 6. 안쪽에 뿌려진 입자의 비율과 정사각형의 넓이에서 사분원이 차지하는 넓이의 비율이라고 추측할 수 있다
# 7. 오차가 생길 수 있으나 입자를 충분히 많이 촘촘하게 뿌린다면 통계적 확률은 수학적확률에 가까워진다
# 8. 원의 넓이를 구하는 식을 도입, 파이*반지름의 제곱 이걸 사분원이기 때문에 1/4로 계산
# 9. 입자가 사분원안에 떨어지는 것들의 비율은 파이/4에 가깝게 된다. 구해진 값에 4를 곱하면 파이 = 원주율
# 10. R에서 이런 동작을 하는 함수 : runif(1)     # 랜덤으로 0~1사이의 값을 만들어줌
n_sim <- 1000
x <- vector(length = n_sim)
y <- vector(length = n_sim)
res <- 0
for (i in 1:n_sim) {
    x[i] <- runif(1)
    y[i] <- runif(1)
    if (x[i]^2 + y[i]^2 < 1) res <- res + 1
}
print(res)
print(res / n_sim * 4)
circle <- function(x) sqrt(1 - x^2)
plot(x, y, xlab = "X", ylab = "Y")
curve(circle, from = 0, to = 1, add = T, col = "blue", lwd = 2)


## 몬티홀 문제
# 바꾸지 않고 처음 문을 고른 경우
n_simul <- 1000
doors <- 1:3
success <- 0
for (i in 1:n_simul) {
    # 3개의 문 중에 차의 위치를 선택
    car <- sample(doors, 1)
    # 차가 없는 쪽에 염소를 배치
    if (car == 1) {
        goat <- c(2, 3)
    } else if (car == 2) {
        goat <- c(1, 3)
    } else {
        goat <- c(1, 2)
    }
    # 참가자가 문을 선택(고른다)
    pick <- sample(doors, 1)
    # 참가자가 고르지 않은 문 중 염소가 있는 문을 찾는다
    goat_not_picked <- goat[goat != pick]
    # 참가자가 고르지 않은 문 중 염소가 있는 문 하나를 열어준다
    if (length(goat_not_picked) > 1) {
        open <- sample(goat_not_picked, 1)
    } else {
        open <- goat_not_picked
    }

    # 바꾸지 않고 처음 고른 문이 차가 있는 문이면 "성공"을 기록
    if (pick == car) success <- success + 1
}

# 총 시행중 "성공" 의 비율
success / n_simul

# 바꾸는 경우
n_simul <- 1000
doors <- 1:3
success <- 0
for (i in 1:n_simul) {
    # 3개의 문 중에 차의 위치를 선택
    car <- sample(doors, 1)
    # 차가 없는 쪽에 염소를 배치
    if (car == 1) {
        goat <- c(2, 3)
    } else if (car == 2) {
        goat <- c(1, 3)
    } else {
        goat <- c(1, 2)
    }
    # 참가자가 문을 선택(고른다)
    pick <- sample(doors, 1)
    # 참가자가 고르지 않은 문 중 염소가 있는 문을 찾는다
    goat_not_picked <- goat[goat != pick]
    # 참가자가 고르지 않은 문 중 염소가 있는 문 하나를 열어준다
    if (length(goat_not_picked) > 1) {
        open <- sample(goat_not_picked, 1)
    } else {
        open <- goat_not_picked
    }

    # 바꿔서 고른 문이 차가 있는 문이면 "성공"을 기록
    pick <- doors[(doors != pick) & (doors != open)]
    if (pick == car) success <- success + 1
}
success / n_simul


## 심슨의 역설


## 생일 역설 : 왜 드물게 보이는 사건은 꼭 일어나는가?
# 한반에 20명의 학생이 있을 때에 생일이 겹치는 학생이 한명도 없을 확률은?
# (365-1)/365 * (365-2)/365 * (365-3)/365 * (365-4)/365 * ... * (365-19)/365 # nolint

n <- 40
res <- 1
for (i in 1:(n - 1)) {
    res <- res * (365 - i) / 365
}
res
