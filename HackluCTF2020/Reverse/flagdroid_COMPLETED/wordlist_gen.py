import random

prefix = "h4rd~"
prefix2 = "hard4-"

words = ""
words2 = ""

wordmaximum = 1000000

word_file = open("wordlist.txt", "w")
word_file2 = open("wordlist2.txt", "w")

def get_random_string(length):
    char_list = "0123456789abcdefghijklmnopqrstuvwxyz"
    result_str = prefix + ''.join(random.choice(char_list) for i in range(length))
    return result_str

def get_random_string2(length):
    char_list = "0123456789abcdefghijklmnopqrstuvwxyz"
    result_str = prefix2 + ''.join(random.choice(char_list) for i in range(length))
    return result_str

for count in range(0, wordmaximum):
    words += get_random_string(3)
    word_file.write(words+'\n')
    words = ""
word_file.close()
print("DONE")

for count in range(0, wordmaximum):
    words2 += get_random_string2(3)
    word_file2.write(words2+'\n')
    words2 = ""
word_file2.close()
print("DONE")
