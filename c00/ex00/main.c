/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jdetre <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/04 15:56:08 by jdetre            #+#    #+#             */
/*   Updated: 2023/07/04 16:22:04 by jdetre           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "../piscine.h"

int	main(int argc, char *argv[])
{
	(void)argc;
	(void)argv;
	char	*str = "La fonction ft_putchar() fonctionne correctement !\n";

	while (*str)
	{
		write(1, str++, 1);
	}
	return (0);
}
