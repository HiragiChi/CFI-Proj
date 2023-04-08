#include <stdio.h>
#include <string.h>
#include <signal.h>
typedef void (*typeD)(char* shape);
static void funcD(double x){
    printf("%0.2f\n",x);
}
int main(int argc, char** argv) {
    typeD fp1;
    char *x = malloc(20);
    fp1=funcD;
    fp1(x);
    return 0;
}