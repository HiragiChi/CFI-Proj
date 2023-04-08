from subprocess import Popen,PIPE
import os
programList= "/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/myStuff/ossFuzz/cProgramListRemain"
programFile=open(programList, "r")
i=0
command="python3 /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/oss_fuzz_notrap/infra/helper.py build_fuzzers {programName} --engine afl 2>&1 | tee /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/oss_fuzz_notrap/zzscript/result/$programName.buildLog"
for line in programFile.readlines():
    i+=1 
    # endpos=line.rfind("/")
    programName=line[:-1]
    # print(programName)
    # print(programName)
    os.system(command.format(programName=programName))