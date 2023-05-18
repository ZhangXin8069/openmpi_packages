# pkgs
## install openmpi
```
%cd /mnt/workspace/data
# !wget https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.5.tar.gz
# !tar zxf openmpi-4.1.5.tar.gz
%cd openmpi-4.1.5
%ll 
!./configure --prefix=/mnt/workspace/data/openmpi
!make
!make install
!MPI_HOME=/mnt/workspace/data/openmpi
!export PATH=${MPI_HOME}/bin:$PATH
!export LD_LIBRARY_PATH=${MPI_HOME}/lib:$LD_LIBRARY_PATH
!export MANPATH=${MPI_HOME}/share/man:$MANPATH
%cd examples
!mpicxx hello_cxx.cc
!mpirun -np 4 a.out
```
