
# Q7 & Q8: Employee and Project classes
class Employee:
    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def display(self):
        print(f"Name: {self.name}, Salary: {self.salary}")

    def is_high_earner(self):
        return self.salary > 60000

class Project(Employee):
    def __init__(self, name, salary, project_name, hours_allocated):
        super().__init__(name, salary)
        self.project_name = project_name
        self.hours_allocated = hours_allocated

# Q9: Instantiate and check
e1 = Employee("Ali", 50000)
e2 = Employee("Sara", 70000)
e3 = Employee("Neha", 60000)

for emp in [e1, e2, e3]:
    emp.display()
    print("High earner:", emp.is_high_earner())
print()