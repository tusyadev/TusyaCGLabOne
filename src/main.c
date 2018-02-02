#include<stdio.h>
#include<gtk/gtk.h>
int main(int argc, char* argv[])
{
    if(argc > 1)
        printf("First argument:%s\n", argv[1]);
    else
        printf("No arguments!\n");
    return 0;
}
