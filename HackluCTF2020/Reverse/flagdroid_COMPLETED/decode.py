p = "\037TT:\0375ñHG"
p = list(str(p))

h = "hack.lu20"
h = list(str(h))

for b in range(len(p)):
    p[b] = chr(ord(p[b]) ^ ord(h[b]))
    p[b] = chr(ord(p[b]) - b)

print("".join(p))