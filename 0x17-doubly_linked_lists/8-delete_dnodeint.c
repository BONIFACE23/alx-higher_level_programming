#include <stddef.h>
#include <stdlib.h>
#include "lists.h"

/**
 * delete_dnodeint_at_index - Deletes the node at a given index in a dlistint_t list
 * @head: Pointer to a pointer to the head of the doubly linked list
 * @index: Index of the node to be deleted, starting from 0
 *
 * Return: 1 if the deletion succeeded, or -1 if it failed
 */
int delete_dnodeint_at_index(dlistint_t **head, unsigned int index)
{
	dlistint_t *current;
	unsigned int count = 0;

	if (head == NULL || *head == NULL)
		return (-1);

	current = *head;
	if (index == 0)
	{
		*head = current->next;
		if (*head != NULL)
			(*head)->prev = NULL;
		free(current);
		return (1);
	}

	while (current != NULL)
	{
		if (count == index)
		{
			if (current->next != NULL)
				current->next->prev = current->prev;
			if (current->prev != NULL)
				current->prev->next = current->next;
			free(current);
			return (1);
		}
		current = current->next;
		count++;
	}

	return (-1);
}

