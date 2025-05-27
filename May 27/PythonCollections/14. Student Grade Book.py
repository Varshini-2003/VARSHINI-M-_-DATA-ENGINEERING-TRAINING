grades = {}
for _ in range(3):
    name = input("Enter student name: ")
    marks = int(input(f"Enter marks for {name}: "))
    grades[name] = marks

lookup = input("Enter student name to lookup: ")
mark = grades.get(lookup)
if mark is not None:
    if mark >= 90:
        print("Grade: A")
    elif mark >= 75:
        print("Grade: B")
    else:
        print("Grade: C")
else:
    print("Student not found.")
