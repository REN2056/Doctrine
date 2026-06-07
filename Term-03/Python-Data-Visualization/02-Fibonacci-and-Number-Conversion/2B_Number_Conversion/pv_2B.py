'''
DAPP To convert binary to decimal octal to hexadecimal using functions
'''

def bin2Dec(val):
    rev = val[::-1]
    dec = 0
    i = 0
    for dig in rev:
        dec += int(dig)*2**i
        i+=1
    return dec
def oct2Hex(val):
    rev = val[::-1]
    dec=i=0
    for dig in rev:
        dec += int(dig)*8**i
        i+=1
    lis = []
    while dec != 0:
        lis.append(dec%16)
        dec = dec // 16
    n1 =[]
    for elem in lis[::-1]:
        if elem <=9:
            n1.append(str(elem))
        else:
            n1.append(chr(ord('A')+(elem-10)))
    hex_str = "".join(n1)
    return hex_str
num1 = input("Enter a binary number: ")
res1 = bin2Dec(num1)
print(f"The decimal form of {num1} is {res1}")

num1 = input("Enter a Octal Number: ")
res1 = oct2Hex(num1)
print(f"The hexadecimal form of {num1} is {res1}")