file_path=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
install_path="$HOME/external-libraries" #absolute path
mkdir ${install_path} -p

MPI_HOME=${install_path}/openmpi-4.1.5
export PATH=${MPI_HOME}/bin:$PATH
export LD_LIBRARY_PATH=${MPI_HOME}/lib:$LD_LIBRARY_PATH
export MANPATH=${MPI_HOME}/share/man:$MANPATH