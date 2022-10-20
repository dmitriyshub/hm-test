import random as rd

sentence = 'The cold never bothered me anyway'
sentence2 =[word[0].upper() for word in sentence.split()]
print(sentence2)


numbers = [rd.randint(1,150) for i in range(50)]
print(numbers)
above_120 = [n * 1.2 for n in numbers if n > 120]
print(above_120)

def tr(lst):
    out = [[lst[j][i] for j in range(len(lst))] for i in range(len(lst[0]))]
    return out


def transpose(array):
    width = len(array[0])
    result = []

    for i in range(width):
        pair = []
        for item in array:
            pair.append(item[i])
        result.append(pair)
    print(result)


transpose([[1, 2, 3], [4, 5, 6]])
