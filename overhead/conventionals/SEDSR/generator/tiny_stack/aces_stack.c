
#include "aces_stack.h"
#include <stdio.h>
#include <string.h>

//void InitStack(Stack *stack, const char* _name)
void InitStack(Stack *stack)	
{
	stack->max_size = 0;
	stack->size = -1;	
}
 
int IsEmpty(Stack *stack)
{
	return stack->size == -1;   
}


void push(Stack *stack, int data)
{
	stack->stack_arr[++(stack->size)] = data;
}

int pop(Stack *stack)
{

	return stack->stack_arr[stack->size--];
}

void copy_stack(Stack* to_stack, Stack* from_stack)
{

//	Stack* copied_stack = (Stack*)malloc(sizeof(Stack));
//	InitStack(to_stack);

//	to_stack->size = from_stack->size;

	int i = 0;
	for(i = 0; i < from_stack->size +1; i++)
	{
		to_stack->stack_arr[++to_stack->size] = from_stack->stack_arr[i];
	}

}

/*
void show_elements(Stack* stack)
{
	int size = stack->size;
	int i;

	Node* current = NULL;
	printf(" [stack] stack_elements: ");
	for(int i=0; i<size; i++)
	{
		current = stack->top;
		printf("%x ", current->data);

		current = current->next;
	}
	printf("\n");


}
*/

void delete_stack(Stack* stack)
{

//	free(stack);
	return;
}

/*

unsigned int top(Stack* stack)
{
	return  stack->top->data;
}
*/

