sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update

sudo apt-get install git build-essential pkg-config autoconf automake libtool bison flex libpq-dev
sudo apt-get install clang-5.0
sudo apt-get install pandoc
sudo apt-get install clang-format-5.0

sudo apt-get install gcc-6 g++-6 cpp-6


export CXX=clang++-5.0
export CXXFLAGS="-stdlib=libc++ -fno-omit-frame-pointer -isystem /usr/include/libcxxabi -O3 -ggdb"
git clone https://github.com/stellar/stellar-core.git
cd stellar-core/
./autogen.sh && ./configure && make -j6



git clone https://github.com/stellar/stellar-core.git
cd stellar-core
git submodule init
git submodule update

./autogen.sh
./configure
make -j6
make check
make install