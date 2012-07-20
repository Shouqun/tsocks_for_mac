#!/bin/bash

cd tsocks-1.8.4

patch -p0 < ../tsocks.osx.patch

#auto config
autoreconf

#To enable DNS in mac, add '--enable-hostnames'
./configure --prefix=/opt/local --bindir=/opt/local/bin --sysconfdir=/opt/local/etc --enable-hostnames --disable-tordns

make 

sudo make install

