apt-get install -y libcurl4-openssl-dev libbz2-dev zlib1g-dev libncurses5-dev libncursesw5-dev liblzma-dev libhts-dev
cd ~
cd ..
cd usr/bin/
wget https://github.com/samtools/htslib/releases/download/1.10.2/htslib-1.10.2.tar.bz2 -O htslib.tar.bz2
tar -xjvf htslib.tar.bz2
cd htslib-1.10.2/
make
make install
cd ~
