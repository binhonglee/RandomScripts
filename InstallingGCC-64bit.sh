echo Downloading the file
wget ftp://mirrors-usa.go-parts.com/gcc/releases/gcc-6.2.0/gcc-6.2.0.tar.bz2
echo Decompressing the file
bunzip2 gcc-6.2.0.tar.bz2
tar xvf gcc-6.2.0.tar
echo Navigate into the decompressed folder
cd gcc-6.2.0
echo Download the prerequisites
./contrib/download_prerequisites
cd ..
echo Create new folder
mkdir objdir
cd objdir
$PWD/../gcc-6.2.0/configure --prefix=$HOME/gcc-6.2.0 --enable-languages=c,c++,fortran,go --disable-multilib
echo Installing it
make
make install
