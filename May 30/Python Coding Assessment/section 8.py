import pandas as pd
from datetime import datetime

# Read data from CSV files
employees = pd.read_csv("employees.csv")
projects = pd.read_csv("projects.csv")

# Q20. Merge employees and projects
merged = pd.merge(employees, projects, on='EmployeeID', how='inner')
print("\nMerged employee-projects:")
print(merged)

# Q21. Employees not working on any project
left_join = pd.merge(employees, projects, on='EmployeeID', how='left')
no_project = left_join[left_join['ProjectID'].isna()]

print("\nEmployees not working on any project:")
print(no_project[['EmployeeID', 'Name']])

# Q22. Add TotalCost = HoursAllocated * (Salary / 160)
merged['TotalCost'] = merged['HoursAllocated'] * (merged['Salary'] / 160)

print("\nMerged data with TotalCost column:")
print(merged[['Name', 'ProjectName', 'TotalCost']])
