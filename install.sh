source ./env.sh

pushd ${install_path}
tar xzf ${file_path}/openmpi-4.1.5.tar.gz && pushd openmpi-4.1.5
./configure --prefix=${MPI_HOME}
make -j16
make install
pushd examples
mpicxx hello_cxx.cc
mpirun -np 4 a.out
popd
popd
