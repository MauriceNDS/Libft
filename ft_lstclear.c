/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adel-sol <adel-sol@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/26 09:43:51 by adel-sol          #+#    #+#             */
/*   Updated: 2020/11/26 15:13:38 by adel-sol         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void*))
{
	t_list	*cpy;

	if (!lst)
		return ;
	cpy = *lst;
	while (cpy)
	{
		ft_lstdelone(cpy, del);
		cpy = cpy->next;
	}
	*lst = NULL;
}
