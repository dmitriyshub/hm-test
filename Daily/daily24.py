n = 5
for row in range(1, n+1):
    for col in range(1, n*2):
        if (row == n) or (row+col == n+1) or (col-row == n-1):
            print('*', end='')
        else:
            print(end=' ')
    print()


print('    *    ')
print('   * *   ')
print('  *   *  ')
print(' *     * ')
print('*********')

class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def display(self):
        print(f'person name: {self.name} , person age: {self.age}')

class Student(Person):
    def __init__(self, name, age, section):
        super().__init__(name, age)
        self.section = section
    def display_student(self):
        print(f'student name: {self.name}, student age: {self.age}, student section: {self.section}')

dima = Person('Dima', '31')
dima.display()

dmitriy = Student('Dima', '31', 'Cloud Computing')
dmitriy.display_student()