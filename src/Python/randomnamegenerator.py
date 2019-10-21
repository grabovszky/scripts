from random import choice


def random_name_generator(first, second, x):
    names = []

    for i in range(x):
        names.append("{0} {1}".format(choice(first), choice(second)))
        
    return set(names)


first_names = ["Drew", "Mike", "Landon", "Jeremy", "Tyler", "Tom", "Avery"]
last_names = ["Smith", "Jones", "Brighton", "Taylor"]

names = random_name_generator(first_names, last_names, 5)

print('\n'.join(names))
