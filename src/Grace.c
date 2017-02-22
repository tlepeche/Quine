#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
/*
	YAY another useless com
*/
#define A a
#define W(fd,a) dprintf(fd, a, #a);
#define T(a) int main(){int fd=open("Grace_kid.c",O_CREAT|O_RDWR|O_TRUNC,0777);W(fd,a);}
T("#include <stdio.h>\n#include <fcntl.h>\n#include <unistd.h>\n/*\n\tYAY another useless com\n*/\n#define A a\n#define W(fd,a) dprintf(fd, a, #a);\n#define T(a) int main(){int fd=open(\"Grace_kid.c\",O_CREAT|O_RDWR|O_TRUNC,0777);W(fd,a);}\nT(%s)\n")
