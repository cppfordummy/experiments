CC = g++
CXXFLAGS = -g -Wall -I headers/ -std=c++11
CFLAGS =
LIBS =
LDFLAGS = $(LIBS)

SRC_ROOT = sources
SRC_DIRS = $(SRC_ROOT)
SRC_DIRS := $(shell find $(SRC_DIRS) -type d | grep \\.git -v)
SRC_DIRS := $(sort $(SRC_DIRS))
SRC_FILES = $(foreach dir,$(SRC_DIRS),$(wildcard $(addprefix $(dir)/*,.cxx)))

OBJECTS = $(SRC_FILES:.cxx=.o)
DEPENDENCIES = $(SRC_FILES:.cxx=.d)

EXECUTABLE = start

all: build-info $(OBJECTS)
	@echo 'Linking the following objects'
	@echo $(foreach obj, $(OBJECTS), "$(obj)\n")
	$(CC) $(OBJECTS) $(LDFLAGS) $(CFLAGS) $(CXXFLAGS) $(LDFLAGS) -o $(EXECUTABLE)

%.o: %.cxx
	@echo "Compiling $< -> $@"
	$(CC) $(CXXFLAGS) $(CFLAGS) -MMD -MP -o $@ -c $<

build-info:
	@echo "Build info ----------------------------------"
	@echo "Sources dirs:"
	@echo "$(sort $(foreach dir, $(SRC_DIRS), $(dir)\n))"
	@echo "Sources files:"
	@echo "$(sort $(foreach dir, $(SRC_FILES), $(dir)\n))"

clean:
	rm -f $(OBJECTS) $(DEPENDENCIES)
	rm -f $(EXECUTABLE)

-include $(DEPENDENCIES)


