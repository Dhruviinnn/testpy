# =========================================
# R FILE WITH MULTIPLE TYPES OF ERRORS
# =========================================

bad_syntax <- mean(c(1,2,3)

print(undefined_variable)

num_value <- 10
result <- num_value + "string"

vec <- c(1, 2, 3)
print(vec[10])

mean(1, 2, 3)

x <- NULL
print(x + 1)

if (NA) {
  print("This will fail")
}

library(nonexistentPackageXYZ)

a <- 10 / 0
print(a)

df <- data.frame(a = 1:3)
print(df$b)

infinite_function <- function(x) {
  infinite_function(x)
}
infinite_function(5)

apply(vec, 1, sum)

f <- factor(c("a", "b"))
levels(f) <- c("x")   # wrong length

m <- matrix(1:4, nrow=2)
m[3,3]

seq("a", "z")

unexpected_token <- 5 %%
 
5 <- x

log()

if (5 = 3) {
  print("Wrong comparison")
}


BadVariableName=5

