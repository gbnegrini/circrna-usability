wget https://github.com/alexdobin/STAR/archive/2.7.9a.tar.gz -O STAR.tar.gz
tar -xzf STAR.tar.gz
cd STAR-2.7.9a/source
make
export PATH=/circrna-usability/circRNA_finder/STAR-2.7.9a/source:$PATH
source ~/.bashrc