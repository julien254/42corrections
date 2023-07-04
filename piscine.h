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
void			ft_ft(int *nbr);
void			ft_ultimate_ft(int *********nbr);
void			ft_swap(int *a, int *b);
void			ft_div_mod(int a, int b, int *div, int *mod);
void			ft_ultimate_div_mod(int *a, int *b);
void			ft_putstr(char *str);
int				ft_strlen(char *str);
void			ft_rev_int_tab(int *tab, int size);
void			ft_sort_int_tab(int *tab, int size);
char			*ft_strcpy(char *dest, char *src);
char			*ft_strncpy(char *dest, char *src, unsigned int n);
int				ft_str_is_alpha(char *str);
int				ft_str_is_numeric(char *str);
int				ft_str_is_lowercase(char *str);
int				ft_str_is_uppercase(char *str);
int				ft_str_is_printable(char *str);
char			*ft_strupcase(char *str);
char			*ft_strlowcase(char *str);
char			*ft_strcapitalize(char *str);
unsigned int	ft_strlcpy(char *dest, char *src, unsigned int size);
void			ft_putstr_non_printable(char *str);
void			*ft_print_memory(void *addr, unsigned int size);
int				ft_strcmp(char *s1, char*s2);
int				ft_strncmp(char *s1, char*s2, unsigned int n);
char			*ft_strcat(char *dest, char *src);
char			*ft_strncat(char *dest, char *src, unsigned int nb);
char			*ft_strstr(char *str, char *to_find);
unsigned int	ft_strlcat(char *dest, char *src, unsigned int size);
int				ft_atoi(char*str);
void			ft_putnbr_base(int nbr, char *base);
#endif
