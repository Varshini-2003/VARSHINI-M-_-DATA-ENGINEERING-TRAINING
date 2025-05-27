a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
op = input("Enter operator (+, -, *, /): ")

if op == '+':
    print(f"Result: {a + b}")
elif op == '-':
    print(f"Result: {a - b}")
elif op == '*':
    print(f"Result: {a * b}")
elif op == '/':
    print(f"Result: {a / b}")
else:
    print("Invalid operator")
