def is_leap_year(year):
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        return True
    else:
        return False

years = [2000, 1900, 2020, 2023, 2024]

for y in years:
    print(f"{y} is a leap year: {is_leap_year(y)}")
