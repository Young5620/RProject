### 내장함수
# max(), min(), sqrt()-루트연산, abs()-절대값
# ceiling()-올림, floor()-내림
max(c(11, 5, 36, 3, 4, 8, 33))
min(c(11, 5, 36, 3, 4, 8, 33))
sqrt(2)
abs(-100)
ceiling(1.4)
floor(1.4)
round(1.456, 2)

## 문자열
# 1. 문자열
str <- "Hello R"
str
# 2. 여러줄 문자열
str2 <- "hi
집에가고 싶다
"
print(str2)     # "hi\n집에가고 싶다\n"

# 3. 동일하게 "\n"표현되도록 출력하고 싶다면 cat()
cat(str2)

# 4. 문자열 길이: nchar(str)
nchar(str2)
nchar(str)

# 5. 문자열 내에 글자 확인 함수 : grepl()
str4 <- "Hello world!! Hi,R~"
grepl("H", str4)
grepl("Hi", str4)
grepl("Hello", str4)
grepl("Hw", str4)

# 6. 문자열의 결합: paste()
str5 <- "Hello"
str6 <- "R~!"
paste(str5, str6)

# 7. escape 문자 : \\, \n, \r, \t, \b-커서를 뒤로 이동


## 조건문: if
# if (조건) {
#    조건실행문
# }

# if (조건) {
#    조건실행문
# } else {
#    else 조건 실행문
# }

# if (조건) {
#    조건실행문
# } else if {
#    조건 실행문
# } else {
#    else 조건 실행문
# }


### x가 10일 경우, if문을 사용하여 2의 배수이면 '2의배수', 6의 배수이면 '6의 배수'라고 출력되게 if를 사용해보세요
intext <- readline("입력하세요 : ")
num <- as.integer(intext)
if (num %% 2 == 0) {
    print("2의 배수")
} else if (num %% 6 == 0) {
    print("6의 배수")
}


## 반복분 : while, for
i <- 0
while (i < 6) {
    i <- i + 1
    if (i == 3) {
        next # continue
    }
    print(i)
}

i <- 0
while (TRUE) {
    i <- i + 1
    if (i == 3) {
        break
    }
    print(i)
}

# for문도 비슷하게 사용이 가능함
dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
    print(x)
}

for (x in 1:10) {
    print(x)
}

x <- 1
for (i in 2:10) {
    x <- x * i
    print(x)
}


## 함수만들기 (function 명령어 사용)
# 함수명 <- function(인자리스트) {
#   함수정의부
#}

# return() 함수 실행 결과를 리턴
facto <- function(num) {
    x <- 1
    for (i in 1:num) {
        x <- x * i
    }
    return(x)
}

# 함수호출 : 함수명(인자)
facto(4)

## 함수 중첩 예시1
nestedfunction <- function(x, y) {
    a <- x + y
    return(a)
}
nestedfunction(nestedfunction(2, 2), nestedfunction(3, 3))

## 함수 중첨 예시2
outerfunc <- function(x) {
    innerfunc <- function(y) {
        a <- x + y
        return(a)
    }
    return(innerfunc)
}
output <- outerfunc(3)
output(5)       # x가 3인 Inner_func = output

### 예제] 숫자를 입력받아 역으로 출력하는 프로그램

reverse <- function(num) {
    result <- 0
    while (TRUE) {
        temp <- num %% 10
        num <- num %/% 10
        result <- (result + temp) * 10
        if (num == 0) {
            break
        }
    }
    return(result %/% 10)
}
su <- readline("숫자를 입력하세요 : ")
num <- as.numeric(su)
reverse(num)

### 예제] 두 수를 입력받아 그 평균을 구하는 함수를 만드세요
avg <- function() {
    in_x <- readline("숫자를 입력하세요 : ")
    in_y <- readline("숫자를 입력하세요 : ")
    x <- as.integer(in_x)
    y <- as.integer(in_y)
    return(round((x + y) / 2, 2))
}

## 재귀함수 : 재귀한수는 자신이 자신을 참조하여 동작하는 함수
tri_recursion <- function(k) {
    if (k > 0) {
        result <- k + tri_recursion(k - 1)
        print(result)
    } else {
        result <- 0
        return(result)
    }
}
tri_recursion(5)

### 문제] 재귀함수를 이용하여 팩토리얼 계산 함수를 만드세요
fact_r <- function(k) {
    if (k > 1) {
        result <- k * fact_r(k - 1)
        return(result)
    } else {
        result <- 1
        return(result)
    }
}
fact_r(8)


## 전역변수 설정하기
# 일반 변수 설정
txt <- "awesome"
my_function <- function() {
    txt <- "fantastic"
    paste("R is ", txt)
}
my_function()
print(txt)

# 전역 변수 설정
my_function <- function() {
    txt <<- "fantastic"
    paste("R is ", txt)
}
my_function()
print(txt)

### 벡터 : 같은 자료형의 연속된 리스트(배열)
# 문자 벡터
fruits <- c("banana", "apple", "orange")
fruits[2]
# 숫자 벡터
numbers <- c(1, 2, 3, 4, 5)
numbers[5]
# 연속된 숫자의 벡터 생성
numbers <- 1:10
numbers[7]
# 연속된 값의 표현은 정수 단위로 증가합니다
numbers <- 1.5:6.5
numbers
# 연속된 값의 숫자 벡터 경우 단위 증가시 사용되지 않는 경우
numbers <- 1.5:6.4
numbers
# 논리값 벡터
log_values <- c(TRUE, FALSE, TRUE, FALSE)
log_values
# 벡터 길이 알아오기(요소 개수 알아오기)
length(numbers)

## 벡터의 문자열이나 숫자를 정렬하여 처리하는 함수 : sort()
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)
sort(fruits)
sort(numbers)

## 벡터 함수의 사용 인덱스 참조1: c()
fruits <- c("banana", "apple", "orange", "mango", "lemon")
# 선택참조
fruits[c(1, 3, 5)]

## 벡터 함수의 사용 인덱스 참조2
# 선택 제외(-인덱스로 제거하여 출력)
fruits[-1]
fruits[c(-1, -3)]

## 벡터의 반복: rep()
# 요소의 반복
repeat_each <- rep(c(1, 2, 3), each = 3)
repeat_each
# 벡터의 반복
repeat_times <- rep(c(1, 2, 3), times = 3)
repeat_times
# 요소의 개별 반복
repeat_indep <- rep(c(1, 2, 3), times = c(5, 3, 2))
repeat_indep

## 순차적인 벡터 생성
# 1
number1 <- 1:10
number1
# 2 seq()함수 사용 : 인자(from=(시작), to=(끝), by=(단위간격))
number2 <- seq(from = 0, to = 100, by = 20)
number2
for (i in seq(from = 0, to = 100, by = 20)) {
    print(i)
    }

### Lists : list()함수 사용
# 문자열 리스트
strlist <- list("사과", "바나나", "체리")
print((strlist))

# 숫자형 리스트
numlist <- list(10, 20, 30, 40)
numlist
tlist <- list("사과", c(10, 20, 30), "바나나", "체리")
tlist

# 리스트내 값 참조
strlist <- list("사과", "바나나", "체리")
"사과" %in% strlist

# 리시트내에 값 추가 : append()
strlist <- list("사과", "바나나", "체리")
strlist <- append(strlist, "메론", after = 2)
strlist <- append(strlist, "포도")
# after가 없다면 마지막에 추가

# 리스트 값 제거 :
strlist <- strlist[-1]
strlist

# 리스트 범위 값을 출력
strlist
(strlist)[2:5]

# 리스트 결합
list1 <- list("a", "b", "c")
list2 <- list(1, 2, 3)
list3 <- c(list1, list2)
print(list3)



## Matrices(행렬) - matrix() 를 사용, nrow, ncol 값으로 정렬 지정
## 행렬 생성1
tmatrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)
tmatrix
tmatrix <- matrix(c(1, 2, 3, 4, 5, 6), ncol = 3)
tmatrix

## 행렬 생성2
t2matrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
t2matrix

## 행렬에 대한 접근 "[]"를 이용하여 접근
t2matrix[1, 2]
t2matrix[2, ]
t2matrix[, 2]
t2matrix[, ]

## 하나 이상의 행렬에 접근
t3matrix <- matrix(c("apple", "banana", "cherry", "orange", "grape",
    "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
t3matrix
t3matrix[c(1, 2), ]
t3matrix[-3, ]
t3matrix[, c(1, 3)]
t3matrix[, -2]

## 행렬에 값을 추가(컬럼 추가) : cbind()
newmatrix <- cbind(t3matrix, c("strawberry", "blueberry", "raspberry"))
newmatrix

## 행렬에 값을 추가(로우 추가) : rbind()
newmatrix <- rbind(t3matrix, c("strawberry", "blueberry", "raspberry"))
newmatrix

# 행렬값 제거 : 음수 인덱스 표시
r1matrix <- newmatrix[-c(1, 2), -c(3, 4)]
r1matrix

# 행렬값 확인
"apple" %in% r1matrix
"apple" %in% newmatrix

## 행렬의 row와 column 알아오기 : dim()
dim(t2matrix)
dim(t3matrix)

## 행렬의 길이
lmatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
length(lmatrix)

## 행렬에 반복문을 사용하여 rows와 column값으로 행렬의 값을 불러와 보세요
t4matrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
for (rows in 1:nrow(t4matrix)) { # nolint
    for (colums in 1:ncol(t4matrix)) { # nolint
        print(t4matrix[rows, colums])
    }
}

## 행렬 합치기
matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2,
    ncol = 2)

# row로 더하기: rbind()
matrix_combined <- rbind(matrix1, matrix2)
matrix_combined

# col로 더하기
matrix_combined <- cbind(matrix1, matrix2)
matrix_combined



## Arrays 배열
tarray <- c(1:24)
tarray
class(tarray)

multiarray <- array(tarray, dim = c(4, 3, 3))
multiarray
# dim(4, 3, 3) : 4는 rows, 3은 colmns, 3은 행렬의 개수(생성할 행렬)
# dim(rows, ncol, 생성 개수)

## Arrays 값 접근
multiarray[2, 2, 2]     # Array[row, col, 매트릭번호]  # nolint

# c() 함수를 이용한 접근
t2array <- c(1:24)
## 첫번쨰 행렬의 첫번째 row에 접근
multiarray2 <- array(t2array, dim = c(4, 3, 2))
multiarray2[c(1), , 1]

## 첫번째 행렬의 첫번쨰 column에 접근
multiarray2 <- array(t2array, dim = c(4, 3, 2))
multiarray2[, c(1), 1]

## 존재여부
3 %in% multiarray2

## row와 column
dim(multiarray2)

## Array 길이
length(multiarray2)

## 반복문 사용
for (x in multiarray2) {
    print(x)
}

## Dataframe (data.frame()) # nolint
# 데이터 프레임은 데이터를 테이블 형태로 표현하는 자료형
# 데이터 프레임 안의 데이터 타입은 서로 달라도 된다.

# 첫번째 컬럼은 문자(charactor), 두번쨰는 numeric, 세번쨰는 logical로 생성
data_frame <- data.frame(
    Training = c("Strength", "Stamina", "Other"),
    Pulse = c(100, 150, 120),
    Duration = c(60, 30, 45)
)
data_frame

## summary() : 데이터프레임 값을 요약해서 보여줍니다
summary(data_frame)

data_frame[1]
data_frame["Training"]
data_frame$Pulse

## Row추가 : rbind() # nolint
new_row_df <- rbind(data_frame, c("Speed", 110, 110))
new_row_df

## column추가 : cbind() # nolint
new_col_df <- cbind(data_frame, Steps = c(1000, 6000, 2000))
new_col_df

## row와 col제거
data_frame_new <- data_frame[-c(1), -c(1)]
data_frame_new

## ncol, nrow
ncol(data_frame)
nrow(data_frame)

## 요소 개수(길이)
length(data_frame)      # 3 -> 시리즈 개수(키의 개수)

## 결합 rbind
data_frame1 <- data.frame(
    Training = c("Strength", "Stamina", "Other"),
    Pulse = c(100, 150, 120),
    Duration = c(60, 30, 45)
)
data_frame2 <- data.frame(
    Training = c("Stamina", "Stamina", "Strength"),
    Pulse = c(140, 150, 160),
    Duration = c(30, 30, 20)
)

new_data_frame <- rbind(data_frame1, data_frame2)
new_data_frame

## 결합 cbind
data_frame3 <- data.frame(
    Training = c("Strength", "Stamina", "Other"),
    Pulse = c(100, 150, 120),
    Duration = c(60, 30, 45)
)
data_frame4 <- data.frame(
    Steps = c(3000, 6000, 2000),
    Calories = c(300, 400, 300)
)

new_data_frame1 <- cbind(data_frame3, data_frame4)
new_data_frame1


## Factors(factor()) : 범주형 자료일 때에 사용
## 정해진 범위 내에서 카테고리별로 분석을 하기 위해서 사용되는 데이터 자료형
## 예) 성별: 남/여 , 음악: 록, 팝, 클래식, 재즈, 운동: 스태미나, 근력
# factor 생성 # nolint
music_gener <- factor(c("Jazz", "Rock", "Classic", "Classic",
"Pop", "Jazz", "Rock", "Jazz"))
music_gener

# levels : 카테고리로 출력
levels(music_gener)

# length요소의 개수 출력
length(music_gener)

# 요소 접근
music_gener[3]

# 요소의 변경
music_gener[3] <- "Pop"
music_gener

# 주의) factor는 정해진 범주 내에서 카테고리 별로 분석하기 위해 사용됨
#   사전에 정의되어 있지 않은 값으로 변경시 에러가 발생함
music_gener[3] <- "Opera"

music_gener <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop",
"Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock",
"Opera"))
music_gener[3] <- "Opera"
music_gener


## 순열과 조합
# 순열 : 서로 다른 것들이 있는 경우 그 중에서 몇개를 뽑아서 줄을 세우는 경우의 수
#        여기서 줄을 세운다는 표현은 순서를 고려한다는 의미

## 팩토리얼 구하는 코드
fact <- function(n) {
    x <- 1
    for (i in 2:n) {
        x <- x * i
    }
    return(x)
}
fact(5)

x <- c(1, 2, 3, 4, 5)
count <- 0
for (i in 1:5) {
    x2 <- x[x != i]     # i에 저장된 값 뺴고 , x2에 저장
    for (j in 1:4) {
        print(c(i, x2[j]))
        count <- count + 1
    }
}
print(count)
# (1,2) (1,3) (1,4) (1,5) (2,1) (2,3) (2,4) (2,5)

## 공식을 이용한 경우
# nPr = n!/(n-r)!
perm <- function(n, r) {
    return(fact(n) / fact(n - r))
}
perm(5, 4)


## 조합 : 순서를 고려하지 않는다 (1,2) (2,1)
# 순서를 고려하지 않기 때문에 같은 값이 있다면, 이것은 하나의 값으로 처리됨
# nPr/r! = nCr , 이유: 순서의 쌍이 같은 값으로 구성되기 때문
# 1, 2, 3 세 숫자의 순열 3! = 6
# (1, 2, 3) (1, 3, 2) (2, 1, 3) (2, 3, 1) (3, 1, 2) (3, 2, 1)
# 조합인 경우 : 1

# 조합을 계산하는 코드
x <- c(1, 2, 3, 4, 5)
count <- 0
for (i in 1:4) {
    for (j in (i + 1):5) {
        print(c(i, j))
        count <- count + 1
    }
}
print(count)

# 조합을 계산하는 함수
comb <- function(n, r) {
    return(fact(n) / fact(n - r) / fact(r))
}

comb(5, 2)
# 상트페티르부트크의 역설