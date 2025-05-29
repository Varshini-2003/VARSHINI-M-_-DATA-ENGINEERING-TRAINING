def is_prime(num):
    if num < 2:
        return False
    for i in range(2, num):
        if num % i == 0:
            return False
    return True

n = int(input("enter: "))
if is_prime(n):
    print("prime")
else:
    print("not prime")

for i in range(1, 101):
    if is_prime(i):
        print(i, end=' ')
