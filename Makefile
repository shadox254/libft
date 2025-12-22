NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf
LIB_SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
LIB_OBJS = $(LIB_SRCS:.c=.o)
# LIB_SRCS_BONUS = ft_lstnew_bonus.c
# LIB_OBJS_BONUS = $(LIB_SRCS_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(LIB_OBJS)
	ar rcs $(NAME) $(LIB_OBJS)

clean:
	$(RM) $(LIB_OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
# bonus: $(NAME)

# $(NAME): $(LIB_OBJS_BONUS)
# 	ar rcs $(NAME) $(LIB_OBJS) $(LIB_OBJS_BONUS)