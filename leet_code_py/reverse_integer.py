def reverse_integer(x:int):
    result = 0
    sign = 1 if x > 0 else -1
    x *= sign
    while x > 0:
        result = result*10 + x%10
        x //= 10
    return result*sign
print(reverse_integer(-1234))