arm-toolchain-build-scripts
===========================

Scripts for building a gcc-based ARM toolchain on Linux.

Based almost entirely on YAGARTO build scripts by Michael Fischer: 

http://www.yagarto.org/
http://sourceforge.net/projects/yagarto/

Build Instructions
==================

1. Install required packages

    Debian:
    apt-get install build-essential automake bzip2 libtool gcc-multilib libncurses5-dev
    
    Raspbian:
    apt-get install bzip2 libtoollibncurses5-dev flex bison texlive

    CentOS:
    yum install gcc gcc-c++ make autoconf glibc-devel.i386 libstdc++-devel.i386 automake ncurses-devel

2. Download / extract scripts

   - Set options for 32 or 64 bits in '_env-only.sh' (this must match to the host that is going to run the cross compiler)
   - Update version numbers in _env-only.sh as needed (see download/README.TXT)

3. Download src packages into download directory (or skip to step 4, but run "./auto.sh")

   expat-2.0.1
   http://sourceforge.net/projects/expat/files/expat/2.0.1/expat-2.0.1.tar.gz

   zlib-1.2.3
   ftp://ftp.spline.inf.fu-berlin.de/pub/gentoo/distfiles/zlib-1.2.3.tar.bz2

   gmp-5.0.4
   ftp://ftp.gmplib.org/pub/gmp-5.0.4/gmp-5.0.4.tar.bz2

   mpfr-2.4.2
   http://www.mpfr.org/mpfr-2.4.2/mpfr-2.4.2.tar.bz2

   binutils-2.24
   http://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2

   gcc-4.8.2
   ftp://sources.redhat.com/pub/gcc/releases/gcc-4.8.2/gcc-4.8.2.tar.bz2

   newlib-1.20.0
   ftp://sources.redhat.com/pub/newlib/newlib-1.20.0.tar.gz

   gdb-7.6.2
   ftp://sources.redhat.com/pub/gdb/releases/gdb-7.6.2.tar.bz2

   mpc-1.0.1
   http://www.multiprecision.org/mpc/download/mpc-1.0.1.tar.gz

4. Run "./xx-build-all.sh" (or "./auto.sh" to download sources) to start the build
   - Go make a snack and watch a movie, it's gonna take anywhere from 15 minutes to multiple hours.
   - The build *should* be successfull if there's a file named "xx-ready.txt" and a numbered "-ready.txt" for each build script.

Installation
============

    cd install
    mkdir /opt/yagarto
    cp -R * /opt/yagarto
    export PATH=$PATH:/opt/yagarto/bin    #or add to your .profile or whatever

Uninstall
=========

    rm -rf /opt/yagarto

Credit
======

Credit goes to Michael Fischer (www.yagarto.org) for the original scripts. 

Changes/tweaks by the following people:

caspencer (based on yagarto for Windows 20110429):
- removed the MinGW/MSYS-specific stuff
- fixed some things regarding how libgmp is built and referenced (forced 32-bit build)
- added .log files for each numbered build script

amour03:
- extra script for downloading
- updated versions of sources
- extra environment vars

rktrlng:
- scripts based on yagarto for OS X (20121222)
- had to revert back to gmp-5.0.4 + mpfr-2.4.2 to get it to build on 64 bit (Ubuntu 13.10)
