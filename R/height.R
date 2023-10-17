# 선수들의 키 데이터
height <- c(184, 180, 177, 184, 186, 177, 180, 182, 193, 181, 183, 190, 168, 190, 180, 187, 179, 174, 182, 185, 188, 183)

# 계산
average_height <- mean(height)
max_height <- max(height)
min_height <- min(height)
median_height <- median(height)
std_dev_height <- sd(height)

# 결과값값
cat("평균 키:", round(average_height, 2), "cm\n")
cat("최댓값:", max_height, "cm\n")
cat("최솟값:", min_height, "cm\n")
cat("중앙값:", median_height, "cm\n")
cat("표준편차:", round(std_dev_height, 2), "cm\n")
