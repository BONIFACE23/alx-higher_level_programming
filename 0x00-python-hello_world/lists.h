#ifndef LISTS.H
#define LISTS.H

#include<stdlib.h>

typedef struct listint_s
{
	int n;
	struct listint_s *next;
}listint_t:

int check_cycle(listint_t *list);
void free_listint(listint_t *head);
size_t print_listint(const listint_t *h);
listint_t *add_anodeint(listint_t **head, const int n);

#endif
