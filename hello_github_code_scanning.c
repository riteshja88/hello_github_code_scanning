#include <stdlib.h>
#include <stdio.h>
void function_to_leak_memory()
{
	char *p = NULL;
	*p = 'a';
	char *x = malloc(10);
}

int main()
{
	function_to_leak_memory();
}
