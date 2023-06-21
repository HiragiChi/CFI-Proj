
#include <stdio.h>
#include "randomtest.h"

typedef int (*fptrType)(void *a,void* b);
typedef int (*fptrType2)(int *a,int *b);


int sort(int a,int b, fptrType function){
    int result=function(a,b);
    printf("%d\n",result);
}

int sedWait(int a, int b){
    printf("%d, %d", a, b);
    return a+b;
}

int func1(int* arg1, int* arg2){
    printf("1 %d, 2 %d\n", *arg1, *arg2);
    return *arg1 + *arg2;
}

int func2(double arg1)
{
    printf("really arg1 %f",arg1);
    return arg1;
}

typedef int filler_t(int *, int *);
int main(void){
    fptrType fptr;
    fptr=func1;

    int x=1,y=2;
    int *xptr=&x, yptr=&y;
    sort(xptr,yptr,func1);
    // fptr();
    return 0;
    
    // filler_t filler;
    // printf("%d \n",filler(aptr,bptr));
}