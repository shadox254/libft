/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rruiz <rruiz@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/17 17:34:09 by rruiz             #+#    #+#             */
/*   Updated: 2025/10/23 12:28:54 by rruiz            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_intlen(long num)
{
	int	i;

	i = 0;
	if (num == 0)
		return (1);
	if (num < 0)
		i++;
	while (num != 0)
	{
		num = num / 10;
		i++;
	}
	return (i);
}

static void	ft_var(long *len, long *nb, int n)
{
	*len = ft_intlen(n);
	*nb = n;
}

char	*ft_itoa(int n)
{
	long	len;
	long	nb;
	char	*result;

	ft_var(&len, &nb, n);
	if (n < 0)
		nb *= -1;
	result = malloc(sizeof(char) * (len + 1));
	if (!result)
		return (NULL);
	result[len] = 0;
	if (nb == 0)
		result[0] = '0';
	else
	{
		while (len-- != 0 && nb != 0)
		{
			result[len] = (nb % 10) + '0';
			nb = (nb - (nb % 10)) / 10;
		}
		if (n < 0)
			result[len] = '-';
	}
	return (result);
}
