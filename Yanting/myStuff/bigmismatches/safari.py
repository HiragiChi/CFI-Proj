from subprocess import Popen, PIPE
path=""
githubHttpProto="https://github.com/torvalds/linux/commit/{}"
file=open(path, "r")
for line in file.readlines():
    comment=line[8:-1]
    print(comment)
    githubHttp=githubHttpProto.format(comment)
    Popen(["open",githubHttp],stdout=PIPE)