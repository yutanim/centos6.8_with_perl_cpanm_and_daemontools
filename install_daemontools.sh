#! /bin/bash
#install daemontools
mkdir -p /package
chmod 1755 /package
cd /package
wget  http://cr.yp.to/daemontools/daemontools-0.76.tar.gz
tar -xpf daemontools-0.76.tar.gz
rm -f daemontools-0.76.tar.gz
cd admin/daemontools-0.76
wget http://www.qmail.org/moni.csi.hu/pub/glibc-2.3.1/daemontools-0.76.errno.patch
patch -p1 < daemontools-0.76.errno.patch
echo "patch has done"
rm src/conf-cc
cp /tmp/conf-cc src/conf-cc
package/install
