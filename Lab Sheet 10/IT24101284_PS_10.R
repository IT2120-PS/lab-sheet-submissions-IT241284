setwd("C:\\Users\\User\\OneDrive\\Desktop\\PS Lab sheet 10")

observed <- c(50, 30, 40, 80)

expected_prob <- c(0.25, 0.25, 0.25, 0.25)

test_result <- chisq.test(x = observed, p = expected_prob)

print(test_result)

if (test_result$p.value < 0.05) {
  cat("\nConclusion: Reject the null hypothesis.\n")
  cat("There is a significant difference — customers do not choose all snack types equally.\n")
} else {
  cat("\nConclusion: Fail to reject the null hypothesis.\n")
  cat("There is no significant difference — customers choose all snack types equally.\n")
}