def convert_temp(value, unit):
    if unit.lower() == "c":
        return (value * 9/5) + 32
    elif unit.lower() == "f":
        return (value - 32) * 5/9
    else:
        return "Invalid unit"


print(convert_temp(100, "C"))
print(convert_temp(212, "F"))
