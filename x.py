import random as rd

sentence = 'The cold never bothered me anyway'
sentence2 =[word[0].upper() for word in sentence.split()]
print(sentence2)


numbers = [rd.randint(1,150) for i in range(50)]
print(numbers)
above_120 = [n * 1.2 for n in numbers if n > 120]
print(above_120)