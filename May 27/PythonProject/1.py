num = int(input("Enter a number: "))
digit_sum = 0

while num > 0:
    digit_sum += num % 10
    num //= 10

print(f"Sum of digits: {digit_sum}")
