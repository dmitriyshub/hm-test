file = open('preproinsulinseq.txt', 'r')
x = file.readlines()
# print(x)
del x[0]
del x[-1]
file1=  open('preproinsulinseq1.txt', 'w')
file1.writelines(x)
file1.close()
file.close()

