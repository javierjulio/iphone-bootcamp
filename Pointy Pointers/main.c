#include <stdio.h>

int main (int argc, const char * argv[]) {
	
	int *foo_ptr;
	int foo1 = 0;
	
	// address-of assignment
	foo_ptr =& foo1;
	
	for (int i = 0; i < 10; i++)
	{
		(*foo_ptr)++; // *foo_ptr++ will NOT work
		// or
		//*foo_ptr = *foo_ptr + 1;
	}
	
	printf("foo1 = %d", *foo_ptr);
	
    return 0;
}
