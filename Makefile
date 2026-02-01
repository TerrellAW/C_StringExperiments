# Compiler Flags
CC		= gcc
CFLAGS	= -std=c89 -Wall -Wextra -g

# Project Directories
BIN		= bin
OBJ_DIR	= obj

# Project Files
TARGET	= $(BIN)/hello
SRC		= hello.c
OBJ		= $(SRC:%.c=$(OBJ_DIR)/%.o)

# Default rule
all: $(TARGET)

# Link the executable
$(TARGET): $(OBJ) | $(BIN)
	$(CC) $(OBJ) -o $(TARGET)

# Compile source to object files
$(OBJ_DIR)/%.o: %.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Create directories
$(BIN) $(OBJ_DIR):
	mkdir -p $@

clean:
	rm -f $(OBJ_DIR) $(BIN_DIR)

.PHONY: all clean
