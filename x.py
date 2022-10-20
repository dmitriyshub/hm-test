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
    return result


transpose([[1, 2, 3], [4, 5, 6]])

#Implement a function “mastercounter” that counts the words in a sentence.

Sentence = "Hello is hello, no matter what will be happen, everytime you see me shake my hand and say hello Hello hEllo"
def master(sentence):
    a = sentence.replace(',', '').lower().split()
    # counts = dict()
    # lower = sentence.lower()
    # lower = lower.replace(',', '')
    # sentences = lower.split()

    for word in a:
        if word in counts:
            counts[word] += 1
        else:
            counts[word] = 1

    return counts

print(master(Sentence))