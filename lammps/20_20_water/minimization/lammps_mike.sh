#!/bin/bash
#SBATCH --job-name=min
#SBATCH -p workq
#SBATCH -A hpc_separation
#SBATCH --nodes=1
#SBATCH --ntasks=64
#SBATCH --time=00:10:00            # Wall time limit (hh:mm:ss)
input="min"

module load lammps/23Jun2022/intel-2021.5.0-intel-mpi-2021.5.1


srun -n $SLURM_NTASKS $(which lmp) -in ${input}.in >${input}.out
