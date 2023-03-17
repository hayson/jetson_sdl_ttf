#!/bin/sh
ROOT_PATH=$PWD/../lib
SDL_LIB_PATH=$ROOT_PATH/sdl/lib
SDL_TLL_LIB_PATH=$ROOT_PATH/sdl_ttf/lib
FT_LIB_PATH=$ROOT_PATH/freetype/lib

export LD_LIBRARY_PATH=$SDL_LIB_PATH:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$SDL_TLL_LIB_PATH:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$FT_LIB_PATH:$LD_LIBRARY_PATH

./AppSdl 
