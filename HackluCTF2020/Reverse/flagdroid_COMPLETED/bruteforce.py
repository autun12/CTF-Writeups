import hashlib
import string

target_hash = '6d90ca30c5de200fe9f671abb2dd704e'
count = 0
with open("wordlist.txt") as word_list:
    for line in word_list:
        passwd = line.strip()
        hash = hashlib.md5(passwd.encode('ascii')).hexdigest()
        count += 1
        if hash == target_hash:
            print('plaintext:"' + passwd + '", md5: ' + hash)
            break