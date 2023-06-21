#include <stdio.h>
#include <string.h>
#include <signal.h>
typedef void (*typeD2)(double shape, int buffer_size);
typedef void (*typeD)(double shape);
static  int		(*qcmp)();
// struct Shape {
//   int area;
// };
// struct Shape2 {
//     int area;
// };
// struct Rectangle {
//   int area;
//   int width;
//   int height;
//   char buffer[100];
// };
int* Empty(double x){
    return &x;
}
static void funcD(const double x){
    printf("%0.2f\n",x);
}

// void (*shap)(struct Rectangle* rect, char* buffer, int buffer_size);


void (*shapI)(unsigned int shape, char* buffer, int buffer_size);
void (*shapV)(void* shape, char* buffer, int buffer_size);
void (*shapIp)(int* shape, char* buffer, int buffer_size);
int main(int argc, char** argv) {

    typeD fp1;
    double *x;
    double x1=1.4;
    x=Empty(x1);
//    fp1=funcD;
    printf("%d",*x);
    return 0;
}