ROOT_PATH = $(PWD)/../lib

OUTPUT := AppSdl

SDL_PATH = $(ROOT_PATH)/sdl/include/SDL/
SDL_TTL_PATH = $(ROOT_PATH)/sdl_ttf/include/SDL/
FT_PATH = $(ROOT_PATH)/freetype/include/

SDL_LIB_PATH = $(ROOT_PATH)/sdl/lib
SDL_TLL_LIB_PATH = $(ROOT_PATH)/sdl_ttf/lib
FT_LIB_PATH = $(ROOT_PATH)/freetype/lib

CC = gcc
INCLUDE = -I$(FT_PATH) -I$(SDL_TTL_PATH) -I$(SDL_PATH)
LIB = -L$(FT_LIB_PATH) -L$(SDL_LIB_PATH) -L$(SDL_TLL_LIB_PATH)

all: ${OUTPUT}

${OUTPUT}:
	$(CC) *.c $(INCLUDE) $(LIB) -lfreetype -lSDL -lSDL_ttf -o ${OUTPUT} 

clean: 
	rm -f *.o ${OUTPUT}

