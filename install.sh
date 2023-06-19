path=/home/zhangxin/lib
# wget https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.5.tar.gz
tar zxf openmpi-4.1.5.tar.gz
pushd openmpi-4.1.5
./configure --prefix=${path}/openmpi
make -j16
make install
MPI_HOME=${path}/openmpi
export PATH=${MPI_HOME}/bin:$PATH
export LD_LIBRARY_PATH=${MPI_HOME}/lib:$LD_LIBRARY_PATH
export MANPATH=${MPI_HOME}/share/man:$MANPATH
pushd examples
mpicxx hello_cxx.cc
mpirun -np 4 a.out
popd
popd
rm -rf openmpi-4.1.5
