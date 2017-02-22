#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
int i = 5;
#define A(str,i,test) char str2[80];sprintf(str2, "Sully_%d",i == 5 && test == -1 ? i : i-1);char cmd[80];sprintf(cmd, "gcc -o %s ./%s", str2, str);system(cmd);char str3[80]="./";strcat(str3,str2);if (i > 1) system(str3);
#define W(fd,a,test) dprintf(fd, a, i == 5 && test == -1 ? i : i-1, #a);
#define T(a) int main(){int test=open("Sully_5.c", O_RDONLY);char *str=(char *)malloc(sizeof(char) * 10);sprintf(str,"Sully_%d.c",i == 5 && test == -1 ? i : i-1);int fd=open(str,O_CREAT|O_RDWR|O_TRUNC,0777);W(fd,a,test);A(str,i,test)}
T("#include <stdio.h>\n#include <fcntl.h>\n#include <unistd.h>\n#include <string.h>\n#include <stdlib.h>\nint i = %d;\n#define A(str,i,test) char str2[80];sprintf(str2, \"Sully_%%d\",i == 5 && test == -1 ? i : i-1);char cmd[80];sprintf(cmd, \"gcc -o %%s ./%%s\", str2, str);system(cmd);char str3[80]=\"./\";strcat(str3,str2);if (i > 1) system(str3);\n#define W(fd,a,test) dprintf(fd, a, i == 5 && test == -1 ? i : i-1, #a);\n#define T(a) int main(){int test=open(\"Sully_5.c\", O_RDONLY);char *str=(char *)malloc(sizeof(char) * 10);sprintf(str,\"Sully_%%d.c\",i == 5 && test == -1 ? i : i-1);int fd=open(str,O_CREAT|O_RDWR|O_TRUNC,0777);W(fd,a,test);A(str,i,test)}\nT(%s)\n")
