#!/bin/bash
#SBATCH --job-name=npt
#SBATCH -p workq
#SBATCH -A hpc_separation
#SBATCH --nodes=2
#SBATCH --ntasks=128
#SBATCH --time=02:00:00            # Wall time limit (hh:mm:ss)
input="npt"

module load lammps/23Jun2022/intel-2021.5.0-intel-mpi-2021.5.1


srun -n $SLURM_NTASKS $(which lmp) -in ${input}.in >${input}.out
