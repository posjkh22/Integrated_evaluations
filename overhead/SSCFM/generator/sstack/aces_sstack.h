

#ifndef ACES_SSTACK_H
#define ACES_SSTACK_H


#define MAX_STACK_NUM 7
#define MAX_NODE_NUM 100

/*
struct static_node
{
	int data;
};
typedef struct static_node NODE;
*/

typedef int NODE;

struct _aces_sstack
{
	NODE* node_pool;
	unsigned int stack_number;
	unsigned int size;
	unsigned int max_size;
};
typedef struct _aces_sstack ACES_SSTACK;

void static_InitStack(int stack_number);
int static_IsEmpty(int stack_number);
void static_push(int stack_number, int data);
int static_pop(int stack_number);
void static_copy_stack(int from_stack_number, int to_stack_number);
void static_show_stack(int stack_number);

#define MAX_STACK_NUM 7
#define MAX_NODE_NUM 100

extern ACES_SSTACK stack_pool[MAX_STACK_NUM];
extern NODE stack_node_pool[MAX_STACK_NUM][MAX_NODE_NUM];

#endif
