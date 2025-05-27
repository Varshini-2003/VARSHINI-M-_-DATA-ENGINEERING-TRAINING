words = ["cat", "dog", "elephant", "tiger", "ant"]
grouped = {}
for word in words:
    grouped.setdefault(len(word), []).append(word)
print(grouped)
