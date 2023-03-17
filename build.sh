ROOT=$PWD
BUILD=$ROOT/lib/

@rm -rf $BUILD
mkdir -p $BUILD/freetype $BUILD/sdl $BUILD/sdl_ttf 

#build freetype
tar xzvf 3rd_party/freetype-2.4.10.tar.gz; cd freetype-2.4.10
./configure --prefix=$BUILD/freetype
make -j6;make install
cd ../

#build sdl
tar xzvf 3rd_party/SDL-1.2.15.tar.gz;cd SDL-1.2.15
./configure --prefix=$BUILD/sdl
make -j6;make install
cd ../

tar xzvf 3rd_party/SDL_ttf-2.0.11.tar.gz;cd SDL_ttf-2.0.11
./configure --prefix=$BUILD/sdl_ttf --with-freetype-prefix=$BUILD/freetype --with-freetype-exec-prefix=$BUILD/freetype --with-sdl-prefix=$BUILD/sdl --with-sdl-exec-prefix=$BUILD/sdl
make -j6;make install
cd ../

cd sample
make clean;make -j5;./run_test.sh
