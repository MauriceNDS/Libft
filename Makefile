NAME	=	libft.a

SRC		=	src
INCLUDE	=	-I./includes

SRCS	=	$(addprefix $(SRC)/,	\
			ft_memset.c				\
			ft_bzero.c				\
			ft_memcpy.c				\
			ft_memccpy.c			\
			ft_memmove.c			\
			ft_memchr.c				\
			ft_memcmp.c				\
			ft_strlen.c				\
			ft_isalpha.c			\
			ft_isdigit.c			\
			ft_isalnum.c			\
			ft_isascii.c			\
			ft_isprint.c			\
			ft_toupper.c			\
			ft_tolower.c			\
			ft_strchr.c				\
			ft_strrchr.c			\
			ft_strncmp.c			\
			ft_strlcpy.c			\
			ft_strlcat.c			\
			ft_strnstr.c			\
			ft_atoi.c				\
			ft_calloc.c				\
			ft_strdup.c				\
			ft_substr.c				\
			ft_strjoin.c			\
			ft_strtrim.c			\
			ft_split.c				\
			ft_itoa.c				\
			ft_strmapi.c			\
			ft_putchar_fd.c			\
			ft_putstr_fd.c			\
			ft_putendl_fd.c			\
			ft_putnbr_fd.c			\
			)

BNS		=	$(addprefix $(SRC)/,	\
			ft_lstnew.c				\
			ft_lstadd_front.c		\
			ft_lstsize.c			\
			ft_lstlast.c			\
			ft_lstadd_back.c		\
			ft_lstdelone.c			\
			ft_lstclear.c			\
			ft_lstiter.c			\
			ft_lstmap.c				\
			)

BNS_OBJS	= ${BNS:.c=.o}

OBJS	= ${SRCS:.c=.o}

GCC		= gcc

RM		= rm -f

CFLAGS	= -Wall -Wextra -Werror

.c.o:	
	${GCC} ${CFLAGS} ${INCLUDE} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			ar rc ${NAME} ${OBJS}
			ranlib ${NAME}

bonus:		${OBJS} ${BNS_OBJS}
			ar rc ${NAME} ${OBJS} ${BNS_OBJS}
			ranlib ${NAME}		

all:		${NAME}

clean:
			${RM} ${OBJS} ${BNS_OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re bonus
