# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sduprey <sduprey@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/12/17 05:35:05 by sduprey           #+#    #+#              #
#    Updated: 2017/02/22 15:51:59 by tlepeche         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME1 = Colleen

NAME2 = Grace

NAME3 = Sully

SRC = Colleen.c \
	  Grace.c \
	  Sully.c \

SRCDIR = src/

OBJDIR = obj/

OBJ = $(SRC:%.c=$(OBJDIR)%.o)

CC = clang

RM = rm -rf

INC = -I libft

all: $(NAME1) $(NAME2) $(NAME3)

$(NAME1): $(OBJ)
	@$(CC) -o Colleen $(OBJDIR)Colleen.o
	@echo ""
	@echo $(PX_STR) : $(EX_COLOR)$(NAME1)$(NO_COLOR)
	@echo ""

$(NAME2): $(OBJ)
	@$(CC) -o Grace $(OBJDIR)Grace.o
	@echo ""
	@echo $(PX_STR) : $(EX_COLOR)$(NAME2)$(NO_COLOR)
	@echo ""

$(NAME3): $(OBJ)
	@$(CC) -o Sully $(OBJDIR)Sully.o
	@echo ""
	@echo $(PX_STR) : $(EX_COLOR)$(NAME3)$(NO_COLOR)
	@echo ""

$(OBJDIR)%.o: $(SRCDIR)%.c
	@mkdir -p $(OBJDIR)
	@$(CC) -c $(INC) $< -o $@ 
	@echo $(CC_STR) $*

clean:
	@$(RM) $(OBJDIR)
	@echo $(RM_STR) objects

fclean: clean
	@$(RM) $(NAME1)
	@$(RM) $(NAME2)
	@$(RM) $(NAME3)
	@echo $(RM_STR) $(NAME1)
	@echo $(RM_STR) $(NAME2)
	@echo $(RM_STR) $(NAME3)

re: fclean all

NO_COLOR = "\033[0;0m"
CC_COLOR = "\033[0;33m"
EX_COLOR = "\033[0;32m"
PX_COLOR = "\033[4;37m"
RM_COLOR = "\033[0;31m"

CC_STR = $(CC_COLOR)[CC]$(NO_COLOR)
PX_STR = $(PX_COLOR)Binary compiled successfully$(NO_COLOR)
RM_STR = $(RM_COLOR)Remove$(NO_COLOR)
