'''
WAPP That accepts a sentence and find the number of words, Digits, Upper case Letters and lower case letters
in the sentence.
'''

sentence=input('Enter a sentence:')
wordlist=sentence.split(" ")
print("This sentence has",len(wordlist),"words.")
d=lc=uc=0
for ch in sentence:
 if '0'<=ch<='9':
  d+=1
 elif 'A'<=ch<='Z':
  uc+=1
 elif 'a'<=ch<='z':
  lc+=1
print("This sentence has",d,"digits,",uc,"uppercase letters and",lc,"lowercase letters.")