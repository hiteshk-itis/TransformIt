CFLAGS = -lglfw3 glad.c -lGL -lm -lX11 -lpthread -lXi -lXrandr -ldl
CC = g++
SRC = program.cpp game.cpp resource_manager.cpp game_object.cpp game_level.cpp shader.cpp sprite_renderer.cpp texture.cpp ball_object_collisions.cpp
OBJ = $(SRC:.cpp=.o)

default: Program

Program: $(OBJ)
	$(CC) -o Program $(OBJ) $(CFLAGS)

clean:
	rm *.o
# g++ -c program.cpp game.cpp resource_manager.cpp game_object.cpp game_level.cpp shader.cpp sprite_renderer.cpp texture.cpp ball_object_collisions.cpp -lglfw3 glad.c  -lGL -lm -lX11 -lpthread -lXi -lXrandr -ldl 

# g++ program.o game.o resource_manager.o game_object.o game_level.o shader.o sprite_renderer.o texture.o ball_object_collisions.o -lglfw3 glad.c  -lGL -lm -lX11 -lpthread -lXi -lXrandr -ldl 