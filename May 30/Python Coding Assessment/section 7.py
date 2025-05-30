import pandas as pd
from datetime import datetime

# Read data from CSV files
employees = pd.read_csv("employees.csv")
projects = pd.read_csv("projects.csv")


#Q17. Filter IT employees with salary > 60000
filtered_it = employees[(employees['Department'] == 'IT') & (employees['Salary'] > 60000)]

print("\nIT employees with salary > 60000:")
print(filtered_it)

#Q18. Group by Department
grouped_dept = employees.groupby('Department').agg(
    EmployeeCount=('EmployeeID', 'count'),
    TotalSalary=('Salary', 'sum'),
    AvgSalary=('Salary', 'mean')
)

print("\nGrouped by Department:")
print(grouped_dept)

# Q19. Sort all employees by salary descending
sorted_employees = employees.sort_values(by='Salary', ascending=False)

print("\nEmployees sorted by salary (descending):")
print(sorted_employees)
