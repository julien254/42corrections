/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   piscine.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jdetre <julien.detre.dev@gmail.com>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/26 13:42:32 by jdetre            #+#    #+#             */
/*   Updated: 2023/07/04 11:27:48 by jdetre           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PISCINE_H
# define PISCINE_H

# include <limits.h>
# include <stdio.h>
# include <bsd/string.h>
# include <string.h>
# include <unistd.h>
# include <stdlib.h>


void			ft_putchar(char c);
void			ft_print_alphabet(void);
void			ft_print_reverse_alphabet(void);
void			ft_print_numbers(void);
void			ft_is_negative(int n);
void			ft_print_comb(void);
void			ft_print_comb2(void);
void			ft_putnbr(int nb);
void			ft_print_combn(int n);

#endif
