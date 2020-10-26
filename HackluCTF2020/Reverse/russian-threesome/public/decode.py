import os, sys
import struct



with open("magnetic_drum.img", "rb") as f:
    f.seek(405, 0)
    print f.read()