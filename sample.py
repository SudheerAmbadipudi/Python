# age eligibility
import os

age = int(os.getenv("AGE", "0"))
print(f"Your age is: {age}")

age = int(input("enter your age: "))

if age<= 0:
    print("you haven't born yet :")
elif age>=100:
    print("you will be dead mf")
elif age >= 18:
    print("you are eligible to sign in :")
else:
    print("you are under age to sign in :")
