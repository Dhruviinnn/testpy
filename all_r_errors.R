# =========================================
# R FILE WITH MULTIPLE TYPES OF ERRORS
# =========================================

# 1️⃣ SYNTAX ERROR (missing closing parenthesis)
bad_syntax <- mean(c(1,2,3)

# 2️⃣ OBJECT NOT FOUND
print(undefined_variable)

# 3️⃣ TYPE MISMATCH
num_value <- 10
result <- num_value + "string"

# 4️⃣ SUBSCRIPT OUT OF BOUNDS
vec <- c(1, 2, 3)
print(vec[10])

# 5️⃣ WRONG FUNCTION ARGUMENT
mean(1, 2, 3)

# 6️⃣ NULL USAGE ERROR
x <- NULL
print(x + 1)

# 7️⃣ NA LOGICAL ERROR
if (NA) {
  print("This will fail")
}

# 8️⃣ PACKAGE NOT INSTALLED
library(nonexistentPackageXYZ)

# 9️⃣ DIVISION BY ZERO (Warning)
a <- 10 / 0
print(a)

# 🔟 INVALID DATA FRAME COLUMN
df <- data.frame(a = 1:3)
print(df$b)

# 1️⃣1️⃣ INFINITE RECURSION
infinite_function <- function(x) {
  infinite_function(x)
}
infinite_function(5)

# 1️⃣2️⃣ APPLY MISUSE
apply(vec, 1, sum)

# 1️⃣3️⃣ FACTOR LEVEL ERROR
f <- factor(c("a", "b"))
levels(f) <- c("x")   # wrong length

# 1️⃣4️⃣ MATRIX DIMENSION ERROR
m <- matrix(1:4, nrow=2)
m[3,3]

# 1️⃣5️⃣ INVALID SEQUENCE
seq("a", "z")

# 1️⃣6️⃣ UNEXPECTED TOKEN
unexpected_token <- 5 %%
 
# 1️⃣7️⃣ WRONG ASSIGNMENT OPERATOR USE
5 <- x

# 1️⃣8️⃣ FUNCTION ARGUMENT MISSING
log()

# 1️⃣9️⃣ BAD COMPARISON
if (5 = 3) {
  print("Wrong comparison")
}

# 2️⃣0️⃣ STYLE ISSUE (for lintr)
BadVariableName=5