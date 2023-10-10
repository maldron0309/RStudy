#문자를 합쳐 하나로 만드는 함수 paste()
str6 <- c("Hello", "SDHS", "is", "so", "good")
str6
#paste()에 넣어 하나로 합친다.
paste(str6)


#collapse = "," 를 이용해서 단어들을 쉼표로 구분
paste(str6, collapse = ",")
#응용
paste(str6, collapse = "*")
paste(str6, collapse = "/")
paste(str6, collapse = "ㅇ")
paste(str6, collapse = "1")
paste(str6, collapse = "|")

paste(str6, collapse = " ")

## 응용 3개 더 ##

#collapse처럼 함수의 옵션을 설정하는 명령어를 파라미터 또는 매개변수라고 한다.


#함수의 결과물을 새 변수에 넣을 수도 있다.
#x_mean <-mean(x)
#x_mean


############# 패키지 ################
#함수를 사용하려면 패키지를 먼저 설치해야 한다.
#ggplot2 패키지에는
#ggplot(), qplot(), geom_histogram()등 그래프관련 함수 들어있다.
#패키지 설치 -> 패키지 로드 -> 함수사용
# !! 패키지 로드는 R스튜디오 새로 시작할 때마다 반복해야 한다.

#패키지 설치
install.packages("ggplot2")
#코드 실행하면 CRAN 서버에서 패키지를 다운로드해 자동 설치 한다.

#설치 완료 후 R에서 함수 사용할 수 있도록 패키지를 로드해야 함.
#library() 사용

#패키지 로드
library(ggplot2)

#qplot 사용
y <-c("a", "b", "c", "d", "d")
y

#빈도 막대 그래프
qplot(y)
#우측 하단 plots창에 막대 그래프 나옴.

y <-c("동호", "최동호", "진하", "성빈", "성빈", "동호", "동호")
y
qplot(y)

# 패키지에 함수의 기능 테스트 할 수 있는 예제 데이터가 들어있다.
# mpg데이터(milk per gallon)_1999년~2008년 사이
# 미국에서 출시된 자동차 234종의 연비 관련 정보
data<-mpg
print(mpg)
head(mpg)

#파라미터를 조정하여 그래프를 다양하게 나타낼 수 있다.
qplot(data=mpg, x=hwy)
qplot(data=mpg, x=drv, y=hwy)
qplot(data=mpg, x=drv, y=hwy, geom="line")
qplot(data=mpg, x=drv, y=hwy, geom="line",
      colour=drv)
qplot(data=mpg, x=drv, y=hwy, geom="boxplot")
qplot(data=mpg, x=drv, y=hwy, geom="boxplot", colour=drv)



#help기능(도움말)
?qplot


#데이터 프레임 Data Frame은 행과 열로 구성된 사각형 모양의 표 처럼 생겼다.
#엑셀 화면이라고 생각해도 무방
#'열'은 속성을 나타낸다. (컬럼, 변수 라고도 부름)
#'행'은 정보를 나타낸다. (로, 케이스 라고도 부름)

#데이터 프레임 직접 입력해서 만들어보기
kor <-c(90,80,70,60)
math <-c(45,50,60,80)
class_n <-c(1,1,2,2)

df_mid <-data.frame(kor, math, class_n)
df_mid

View(df_mid)

mean(df_mid$kor) # df_mid의 kor변수의 평균


#데이터프레임 한 번에 만들기
#변수 각각 입력해서 아니고 변수와 값을 나열해서 한 번에 만들기
df_mid2 <- data.frame(kor=c(90,80,70,60),
                      math=c(45,50,60,80),
                      class_n=c(1,1,2,2))
df_mid2
View(df_mid2)
__________________________________________________________
#excel_exam.xlsx 파일을 다운하여 엑셀에서 열어보세요.
#총 5개의 변수로 구성 행은 21행까지 있고,
#첫 행이 변수명입력이기 때문에 20명에 대한 정보

#R로 불러오기
#readxl패키지 설치하고 로드( 맨 뒤는 소문자 l이다.)

install.packages("readxl")
library(readxl)


#read_excel()은 엑셀파일을 데이터 프레임으로 만드는 기능을 함.
df_exam <-read_excel("E:/2023 빅데이터분석/2-3/excel_exam.xlsx")
df_exam
#경로복사 하고 역슬래시를 슬래시로 변경!

mean(df_exam$english)

#만약 엑셀 파일 첫번째 행이 변수명이 아닌경우 (data 유실 될 수 있다.)


#col_names = F 파라미터 설정하면 됨.
#첫번째 행은 변수명 아닌 데이터로 인식해오고 변수명은 숫자로 자동 저장
df_exam2 <-read_excel("E:/2023 빅데이터분석/2-3/excel_exam.xlsx", col_names = F)
df_exam2

#엑셀 파일에 여러 시트가 있을 때 몇 번째 시트의 데이터 가져올지 정할 수 있다.
#세 번째 시트에 있는 데이터 ---> 파라미터 sheet = 3으로 지정
df_exam3 <-read_excel("E:/2023 빅데이터분석/2-3/excel_exam_sheet.xlsx", sheet = 3)
df_exam3