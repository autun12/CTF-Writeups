from bitstring import BitStream, pack

with open("test", "rb") as f:
    stream = BitStream(f)

header = stream.read("bytes:4")
unknown_4_bytes = stream.read("bytes:4")
unknown_4_bytes_2 = stream.read("bytes:4")
print(header)
print(unknown_4_bytes)
print(unknown_4_bytes_2)