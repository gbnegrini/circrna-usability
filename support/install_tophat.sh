apt-get install -y tophat
apt-get install -y cufflinks
apt-get install -y bedtools

wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/genePredToGtf
chmod +x genePredToGtf
mv genePredToGtf /usr/bin/

wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/gtfToGenePred
chmod +x gtfToGenePred
mv gtfToGenePred /usr/bin/