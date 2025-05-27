bill = float(input("Enter total bill amount: "))
people = int(input("Enter number of people: "))
tip_percent = float(input("Enter tip percentage: "))

total_bill = bill + (bill * tip_percent / 100)
per_person = total_bill / people

print(f"Amount per person: {per_person:.2f}")
