'''
Write a Python program to:
1. Check whether a given number is a palindrome or not.
2. Count the number of occurrences of each digit in the input number.
'''

print("\nCheck whether a number is a palindrome and count digit occurrences.\n")


def get_number():
    while True:
        num = input("Enter a number: ").strip()

        # Accept only non-negative integers
        if num.isdigit():
            return num

        print("Invalid input! Please enter a non-negative integer.")


# Input
num_str = get_number()

# Palindrome Check
if num_str == num_str[::-1]:
    print("\nPalindrome!")
else:
    print("\nNot a Palindrome!")

# Digit Occurrence Count
print("\nDigit Occurrences:")
for digit in range(10):
    count = num_str.count(str(digit))
    if count > 0:
        print(f"{digit} appears {count} time(s)")