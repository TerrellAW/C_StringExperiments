#include <stdio.h>

main() {
	printf("With Backspace Escape Char: 							hello\b\n");
	printf("With Horizontal Tab Escape Char: 						hello\tworld\n");
	printf("With Alert Escape Char:									\ahello\a\n");
	printf("With Vertical Tab Escape Char and Carriage Return:		\vhello\rhello\n");
	printf("With Hexadecimal Escape Char:							\x9F\n");
	printf("With Octal Number Escape Char:							\123");

	return 0;
}
