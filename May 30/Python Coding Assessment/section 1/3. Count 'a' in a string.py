input_string = "A banana has many advantages."

count = 0
for char in input_string.lower():
    if char == 'a':
        count += 1

print("Number of times 'a' appears:", count)
