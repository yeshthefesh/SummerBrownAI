# first problem
print(60*float(input("hours: ")))

# second problem
choice = input("Which way would you like to convert? (hours/minutes)\n")
num = input(f"How many?\n")
if choice == "hours": print(int(num) / 60)
elif choice == "minutes": print(int(num) * 60)

# third problem
print(len(input("Give a word.\n")))