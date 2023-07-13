str = input()
result = ""
for i in str:
    result += i.upper() if i.islower() else i.lower()
print(result)