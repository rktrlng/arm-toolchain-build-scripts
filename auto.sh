#!/bin/sh

. ./_env-only.sh

#expat-2.0.1
wget -P $TOOLCHAIN_DL_DIR -nc http://sourceforge.net/projects/expat/files/expat/$EXPAT_VER/$EXPAT_SRC.tar.gz

#gmp-5.0.2
wget -P $TOOLCHAIN_DL_DIR -nc ftp://ftp.gmplib.org/pub/$GMP_SRC/$GMP_SRC.tar.bz2

#mpfr-3.1.0
wget -P $TOOLCHAIN_DL_DIR -nc http://www.mpfr.org/$MPFR_SRC/$MPFR_SRC.tar.bz2

#binutils-2.21.1a
wget -P $TOOLCHAIN_DL_DIR -nc http://ftp.gnu.org/gnu/binutils/binutils-$BINUTILS_VER.tar.bz2

#gcc-core-4.6.1
wget -P $TOOLCHAIN_DL_DIR -nc ftp://sources.redhat.com/pub/gcc/releases/gcc-$GCC_VER/$GCC_CORE_SRC.tar.bz2

#gcc-g++-4.6.1
wget -P $TOOLCHAIN_DL_DIR -nc ftp://sources.redhat.com/pub/gcc/releases/gcc-$GCC_VER/$GCC_GPP_SRC.tar.bz2

#newlib-1.19.0
wget -P $TOOLCHAIN_DL_DIR -nc ftp://sources.redhat.com/pub/newlib/$NEWLIB_SRC.tar.gz

#gdb-7.3.1
wget -P $TOOLCHAIN_DL_DIR -nc ftp://sources.redhat.com/pub/gdb/releases/$GDB_SRC.tar.bz2

#mpc-0.9
wget -P $TOOLCHAIN_DL_DIR -nc http://www.multiprecision.org/mpc/download/$MPC_SRC.tar.gz

bash ./xx-build-all.sh
pwd
