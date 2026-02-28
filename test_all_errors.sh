#!/usr/bin/env bash

# =========================
# 1️⃣ SYNTAX ERROR
# =========================

if [ "$USER" = "root" ]   # Missing "then"
    echo "You are root"
fi


# =========================
# 2️⃣ UNSET VARIABLE (runtime error with -u)
# =========================

echo "Value is: $UNDEFINED_VAR"


# =========================
# 3️⃣ QUOTING ISSUE
# =========================

FILE_NAME=My File.txt
touch $FILE_NAME     # Should be quoted


# =========================
# 4️⃣ BAD PRACTICE (Useless use of cat)
# =========================

cat file.txt | grep "hello"


# =========================
# 5️⃣ ARITHMETIC ERROR
# =========================

result=$((10 / 0))
echo $result


# =========================
# 6️⃣ COMMAND NOT FOUND
# =========================

some_random_command_that_does_not_exist


# =========================
# 7️⃣ SECURITY RISK
# =========================

user_input="*"
rm -rf $user_input


# =========================
# 8️⃣ SUBSHELL ISSUE
# =========================

VAR=5
echo $VAR | read VAR
echo "VAR is $VAR"


# =========================
# 9️⃣ FORMAT ISSUE (bad indentation)
# =========================

if [ 1 -eq 1 ]; then
echo "bad indent"
fi


# =========================
# 🔟 INFINITE LOOP
# =========================

while true
do
    echo "looping..."
done