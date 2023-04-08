import os
from subprocess import Popen,PIPE
path="/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/oss_fuzz_notrap/build/out/"
fileProto="/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/oss_fuzz_notrap/build/out/{folderName}/{fileName}"#.format(folderName=folderName,fileName=fileName)
i=0
for folderName in os.listdir(path):
    print('\n')
    print(folderName)
    i+=1

    # print("in")
    for fileName in os.listdir(path+folderName):
        # print(fileName)
        if "afl" in fileName:
            continue
        if ".so" in fileName:
            continue
        if "llvm-symbolizer" in fileName:
            continue
        filePath=fileProto.format(folderName=folderName,fileName=fileName)
        executable = os.access(filePath, os.X_OK)
        if(executable == False or os.path.isdir(filePath)):
            continue
        print(fileName)
        process=Popen("llvm-objdump -d {filePath} | grep \".cfi>:\" | wc -l".format(filePath=filePath),stdout=PIPE,shell=True)
        cfi_lines=process.communicate()
        process=Popen("llvm-objdump -d {filePath} | grep callq | grep \"*\" | wc -l".format(filePath=filePath) , stdout=PIPE,shell=True)
        iCalls=process.communicate()
        print("cfi lines: ",cfi_lines[0].decode()[:-1]," iCalls: ",iCalls[0].decode()[:-1])