cd third_party
mkdir -p toolchain
cd toolchain 
wget https://toolchains.bootlin.com/downloads/releases/toolchains/armv7-eabihf/tarballs/armv7-eabihf--musl--stable-2024.02-1.tar.bz2
tar -xvf armv7-eabihf--musl--stable-2024.02-1.tar.bz2
mv armv7-eabihf--musl--stable-2024.02-1 armv7-linux-musleabihf
rm -f armv7-eabihf--musl--stable-2024.02-1.tar.bz2
cd armv7-linux-musleabihf/bin
for file in *-buildroot*; do [ -f "$file" ] && mv "$file" "${file/-buildroot/}"; done