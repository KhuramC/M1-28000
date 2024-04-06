#!/bin/bash

#SBATCH -J M1_long
#SBATCH -o  out_long.txt
#SBATCH -e  error_long.txt
#SBATCH -t 0-48:00:00  # days-hours:minutes


#SBATCH -N 1
#SBATCH -n 50 # used for MPI codes, otherwise leave at '1'
#SBATCH --mem-per-cpu=8G  # memory per core; default is 1GB/core

START=$(date)
echo "Started running at $START."

mpirun nrniv -mpi -python run_network.py simulation_config_long.json #srun

END=$(date)
echo "Done running simulation at $END"
