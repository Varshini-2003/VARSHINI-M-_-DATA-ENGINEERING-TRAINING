# Q10: Write IT employee names to a file

employees = [
    {"Name": "Ali", "Department": "HR"},
    {"Name": "Neha", "Department": "IT"},
    {"Name": "Ravi", "Department": "Finance"},
    {"Name": "Sara", "Department": "IT"},
    {"Name": "Vikram", "Department": "HR"}
]

with open("it_employees.txt", "w") as f:
    for emp in employees:
        if emp["Department"] == "IT":
            f.write(emp["Name"] + "\n")
print("IT employee names written to it_employees.txt\n")

# Q11: Count words in a file

with open("sample.txt", "w") as f:
    f.write("This is a simple text file with some words.")

with open("sample.txt", "r") as f:
    content = f.read()
    word_count = len(content.split())
print("Word count in sample.txt:", word_count)
print()

