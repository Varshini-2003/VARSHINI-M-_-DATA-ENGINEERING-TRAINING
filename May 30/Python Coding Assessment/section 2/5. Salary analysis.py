salaries = [50000, 60000, 55000, 70000, 52000]
max_salary = max(salaries)
average_salary = sum(salaries) / len(salaries)
above_avg = [s for s in salaries if s > average_salary]
sorted_desc = sorted(salaries, reverse=True)
print("Max salary:", max_salary)
print("Above average salaries:", above_avg)
print("Salaries sorted (desc):", sorted_desc)
print()