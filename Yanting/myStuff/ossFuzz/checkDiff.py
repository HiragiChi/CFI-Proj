file1="/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/myStuff/ossFuzz/cprogramList"
file2="/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/myStuff/ossFuzz/checked"
allProgram=open(file1,"r")
checked=open(file2,"r")
allProgramList=[]
for line in allProgram.readlines():
    program=line[:-1]
    allProgramList.append(program)

checkedList=[]    
for line in checked.readlines():
    program=line[:-1]
    checkedList.append(program)

i=0

for item in allProgramList:
    i+=1
    if item in checkedList:
        print(i)
        continue
    else:
        print("not checked",item, " ",i)
        pass
        