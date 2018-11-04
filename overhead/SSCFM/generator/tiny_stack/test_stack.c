
#include "aces_stack.h"

int main()
{
	int i;
	Stack stack;

	Stack stack2;	

	InitStack(&stack);
	InitStack(&stack2);


	for (i = 1; i <= 5; i++)
	{
		push(&stack, i);
	}
	copy_stack(&stack2, &stack);


	printf("original\n");
	while (!IsEmpty(&stack))
	{
		printf("%d ", pop(&stack));
	}
	printf("\n");
	
	printf("copied\n");
	while (!IsEmpty(&stack2))
	{
		printf("%d ", pop(&stack2));
	}
	printf("\n");

	return 0;
}
