#!/bin/sh
[ -d libc/str ] || exit
[ -x o//tool/curl/curl ] || make -j8 o//tool/curl/curl || exit
mkdir -p o/tmp/ || exit

shineget() {
  echo $2
  o//tool/curl/curl $2 >o/tmp/$$ || exit
  mv o/tmp/$$ $1 || exit
}

shineget libc/str/blocks.txt         https://www.unicode.org/Public/UCD/latest/ucd/Blocks.txt
shineget libc/str/unicodedata.txt    https://www.unicode.org/Public/UCD/latest/ucd/UnicodeData.txt
shineget libc/str/eastasianwidth.txt https://www.unicode.org/Public/UCD/latest/ucd/EastAsianWidth.txt
shineget libc/str/SpecialCasing.txt  https://www.unicode.org/Public/UCD/latest/ucd/SpecialCasing.txt
