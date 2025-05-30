
#Q14. Load both employees.csv and projects.csv using Pandas.
import pandas as pd
from datetime import datetime

employees = pd.read_csv("employees.csv")
projects = pd.read_csv("projects.csv")

#Q15. Display info
print(employees.head(2))
print(employees['Department'].unique())
print(employees.groupby('Department')['Salary'].mean())

#Q16. Add TenureInYears

employees['JoiningDate'] = pd.to_datetime(employees['JoiningDate'])
employees['TenureInYears'] = datetime.now().year - employees['JoiningDate'].dt.year

print("\nEmployees with TenureInYears column:")
print(employees[['Name', 'JoiningDate', 'TenureInYears']])

