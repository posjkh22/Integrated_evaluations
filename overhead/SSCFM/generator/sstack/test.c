
#include "aces_sstack.h"
#include <stdio.h>

int main()
{
	static_InitStack(0);
	static_InitStack(1);
	static_InitStack(2);
	static_InitStack(3);
	static_InitStack(4);

	for(int i=0; i< 99; i++)
	{
		static_push(0, i);
	}
	for(int i=0; i< 99; i++)
	{
		static_push(1, i*2);
	}
	for(int i=0; i< 99; i++)
	{
		static_push(2, i*3);
	}
	for(int i=0; i< 99; i++)
	{
		static_push(3, i*4);
	}


	printf("====Before====\n");

	static_show_stack(0);
	static_show_stack(1);
	static_show_stack(2);
	static_show_stack(3);


	for(int i=0; i< 49; i++)
	{
		static_pop(0);
	}
	for(int i=0; i< 49; i++)
	{
		static_pop(1);
	}
	for(int i=0; i< 49; i++)
	{
		static_pop(2);
	}
	for(int i=0; i< 49; i++)
	{
		static_pop(3);
	}
	
	printf("====After====\n");

	static_show_stack(0);
	static_show_stack(1);
	static_show_stack(2);
	static_show_stack(3);

	printf("====copy====\n");
	
	static_copy_stack(0, 4);
	static_show_stack(4);

}
