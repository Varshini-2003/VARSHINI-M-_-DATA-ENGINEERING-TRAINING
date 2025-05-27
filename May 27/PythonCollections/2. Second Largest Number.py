def second_largest(nums):
    first = second = float('-inf')
    for n in nums:
        if n > first:
            second = first
            first = n
        elif first > n > second:
            second = n
    return second

print(second_largest([5, 1, 9, 7, 3, 9]))
