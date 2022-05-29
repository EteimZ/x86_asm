#include <string.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
	if (argc==2) {
		printf("Checking Password: %s\n", argv[1]);
		if ( strcmp(argv[1], "Password-123" ) == 0 ) {
			printf("Correct password\n");
		} else {
			printf("Wrong password\n");
		}
	} else {
		printf("Please provide password\n");
	}
	return 0;
}
