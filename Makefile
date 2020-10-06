BUILD = build


SRC = BankingSystem.c\



# All include folders with header files
INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out

# Document files
# DOCUMENTATION_OUTPUT = documentation/html

# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean test  doc all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out

# Call `make run` to run the application
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out

# Document the code using Doxygen
#doc:
	#make -C ./documentation

# Build and run the unit tests


# Create new build folder if not present
$(BUILD):
	mkdir build
