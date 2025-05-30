def divide(a, b):
    try:
        return a / b
    except ZeroDivisionError:
        return "Cannot divide by zero"

print("10 / 2 =", divide(10, 2))
print("5 / 0 =", divide(5, 0))
print()