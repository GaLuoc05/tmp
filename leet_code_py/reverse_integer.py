def reverse_integer(x:int):
    numbers = []
    result = 0
    while x > 0:
        numbers.append(x%10)
        x //= 10
    for number in numbers:
        result += number
        result *= 10
    return return
print(reverse_integer(1234))