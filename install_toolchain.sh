mkdir -p tools
cd tools
mkdir -p toolchain
cd toolchain 
wget https://toolchains.bootlin.com/downloads/releases/toolchains/armv7-eabihf/tarballs/armv7-eabihf--glibc--stable-2018.11-1.tar.bz2
tar -xvf armv7-eabihf--glibc--stable-2018.11-1.tar.bz2
mv armv7-eabihf--glibc--stable-2018.11-1 armv7-linux-gnueabihf
rm -f armv7-eabihf--glibc--stable-2018.11-1.tar.bz2
cd armv7-linux-gnueabihf/bin
for file in *-buildroot*; do [ -f "$file" ] && mv "$file" "${file/-buildroot/}"; done