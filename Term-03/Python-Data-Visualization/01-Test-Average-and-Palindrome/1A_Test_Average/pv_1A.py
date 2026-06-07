'''
Write a Python program to find the average marks of the best two tests
out of three test marks entered by the user.
'''

print("\nEnter marks for three tests (0–100).\n")


def get_mark(test_num):
    while True:
        try:
            mark = int(input(f"Enter marks of Test {test_num}: "))

            if 0 <= mark <= 100:
                return mark
            else:
                print("Marks must be between 0 and 100.")

        except ValueError:
            print("Invalid input. Please enter an integer value.")


m1 = get_mark(1)
m2 = get_mark(2)
m3 = get_mark(3)

marks = [m1, m2, m3]
marks.remove(min(marks))

average = sum(marks) / 2

print(f"\nAverage marks of the best two tests = {average:.2f}")