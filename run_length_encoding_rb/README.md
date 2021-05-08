## Data compression using run-length encoding

https://www.codewars.com/kata/578bf2d8daa01a4ee8000046

Run-length encoding (RLE) is a very simple form of lossless data compression in which runs of data are stored as a single data value and count.

A simple form of RLE would encode the string "AAABBBCCCD" as "3A3B3C1D" meaning, first there are 3 A, then 3 B, then 3 C and last there is 1 D.

Your task is to write a RLE encoder and decoder using this technique. The texts to encode will always consist of only uppercase characters, no numbers.


input | output
---|---
A | 1A
B | 1B
CC | 2C
DE | 1D1E
ED | 1E1D
FFGF | 2F1G1F
AAABBBCCCA | 3A3B3C1A

1A
