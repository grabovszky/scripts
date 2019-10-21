innitvar = raw_input("Number (0-Z): ")
basevar = int(raw_input("Base (2-35): "))
convertvar = int(raw_input("Convert base (2-35): "))

# symbol-to-value table.
SY2VA = {'0': 0,
         '1': 1,
         '2': 2,
         '3': 3,
         '4': 4,
         '5': 5,
         '6': 6,
         '7': 7,
         '8': 8,
         '9': 9,
         'A': 10,
         'B': 11,
         'C': 12,
         'D': 13,
         'E': 14,
         'F': 15,
         'G': 16,
         'H': 17,
         'I': 18,
         'J': 19,
         'K': 20,
         'L': 21,
         'M': 22,
         'N': 23,
         'O': 24,
         'P': 25,
         'Q': 26,
         'R': 27,
         'S': 28,
         'T': 29,
         'U': 30,
         'V': 31,
         'W': 32,
         'X': 33,
         'Y': 34,
         'Z': 35}


integer = 0
for character in innitvar:
    assert character in SY2VA, 'Found unknown character!'
    value = SY2VA[character]
    assert value < basevar, 'Found digit outside base!'
    integer *= basevar
    integer += value

# value-to-symbol table
VA2SY = dict(map(reversed, SY2VA.items()))

array = []
while integer:
    integer, value = divmod(integer, convertvar)
    array.append(VA2SY[value])
answer = ''.join(reversed(array))


print (answer)