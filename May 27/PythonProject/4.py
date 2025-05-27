marks = [float(input(f"Enter marks for subject {i+1}: ")) for i in range(5)]
total = sum(marks)
average = total / 5
percentage = (total / 500) * 100

if percentage >= 90:
    grade = 'A'
elif percentage >= 80:
    grade = 'B'
elif percentage >= 70:
    grade = 'C'
elif percentage >= 60:
    grade = 'D'
else:
    grade = 'F'

print(f"Total: {total}, Average: {average}, Percentage: {percentage:.2f}%, Grade: {grade}")
