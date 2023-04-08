import os
from subprocess import Popen, PIPE
path="/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/myStuff/mismatches/linux_check/linux_all_commits"
commitFile=open(path, 'r+')
commandProto="git show -s --format=%B {commit} >> /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/myStuff/mismatches/linux_check/linux_all_commits"
all_commits=[]
outputFile="/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/myStuff/mismatches/linux_check/uniqueCommitWithInfo"
outFile=open(outputFile, 'w')
for line in commitFile.readlines():
    pos=line.find('commit')
    commitNum=line[pos+7:-1]
    # command= commandProto.format(commit=commitNum)
    
    process = Popen(['git','show','-s','--format=%B', commitNum ],stdout=PIPE, stderr=PIPE)
    out,err=process.communicate()

    outFile.write("commit: "+commitNum+'\n')
    outFile.write(out.decode())
    outFile.write('\n')
    # all_commits.append(commitNum)


# all_commits_set=set(all_commits)



# for item in all_commits_set:
#     print(item,end='')
