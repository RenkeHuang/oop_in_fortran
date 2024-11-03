# Set the Fortran Compiler
FC = gfortran

# linker flags, specify library path.
LFLAGS = -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib
# Compiler flags for optimization
FFLAGS = -O0 # no optimization, default, used for debugging

# Source files
SRCS = main.f90 shape_mod.f90 triangle_mod.f90
# Object files
OBJS = $(SRCS:.f90=.o)

# Set the name of the output executable
TARGET = main

# `make` will use this rule to build the executable
# Rule to build the executable directly from source files
$(TARGET): $(SRCS)
	$(FC) $(SRCS) -o $(TARGET) $(LFLAGS) $(FFLAGS)

# # Rule to build the executable from object files
# $(TARGET): $(OBJS)
# 	$(FC) $(OBJS) -o $(TARGET)  $(LFLAGS) $(FFLAGS)

# # Rule to compile source files into object files
# %.o: %.f90
# 	$(FC) -c $< -o $@ $(LFLAGS) $(FFLAGS)

# Clean up
# `make clean` will use this rule to clean up the directory
clean:
	rm -f $(TARGET) $(OBJS)
