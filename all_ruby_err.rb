# frozen_string_literal: true

# =========================
# 1️⃣ LINT ISSUES (Rubocop)
# =========================

unused_variable = 123  # unused variable

def badMethodName   # method name style violation
  puts "Hello"
end

# =========================
# 2️⃣ CODE SMELL (Reek)
# =========================

class GodClass

  def initialize(a, b, c, d, e, f) # Too many parameters
    @a = a
    @b = b
    @c = c
    @d = d
    @e = e
    @f = f
  end

  def long_method
    x = 1
    y = 2
    z = 3
    w = 4
    v = 5
    u = 6
    t = 7
    s = 8
    r = 9
    q = 10
    p = 11
    o = 12
    n = 13
    m = 14
    l = 15
    k = 16
    j = 17
    i = 18
    h = 19
    g = 20
    x + y + z + w + v + u + t + s + r + q
  end

end

# =========================
# 3️⃣ SECURITY ISSUE (Brakeman)
# =========================

user_input = gets.chomp
eval(user_input)   # Dangerous eval

# Simulated Rails-like SQL injection
def find_user(id)
  query = "SELECT * FROM users WHERE id = #{id}"  # SQL Injection
  puts query
end

# =========================
# 4️⃣ TYPE ERROR (Steep)
# =========================

def add(a, b)
  a + b
end

result = add("hello", 5)  # String + Integer type error

# =========================
# 5️⃣ RUNTIME ERROR
# =========================

def divide(a, b)
  a / b
end

puts divide(10, 0)  # ZeroDivisionError

# =========================
# 6️⃣ SYNTAX ERROR
# =========================

def broken_method(
  puts "This will cause syntax error"
