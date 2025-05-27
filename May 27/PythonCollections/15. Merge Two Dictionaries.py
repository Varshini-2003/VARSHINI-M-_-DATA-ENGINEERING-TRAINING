d1 = {"a": 10, "b": 20}
d2 = {"b": 5, "c": 15}
merged = d1.copy()
for k, v in d2.items():
    merged[k] = merged.get(k, 0) + v
print(merged)
