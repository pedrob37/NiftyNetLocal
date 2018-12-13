#$ -P gpu
#$ -l gpu=1
#$ -l h_rt=23:59:0
#$ -l tmem=11.5G
#$ -S /bin/bash
#$ -wd /home/pborges/NiftyNet/

# Script variables
working_directory=$1
base=$(basename $working_directory)
config_file=$base.ini
phase=train
task=net_regress.py
data_split=dataset_split.csv


pushd /home/pborges/NiftyNet
source /share/apps/examples/python/python-3.6.3.source
# make sure the dependencies are installed
LD_LIBRARY_PATH="/share/apps/python-3.6.3-shared/lib:${LD_LIBRARY_PATH}" $(command -v /share/apps/python-3.6.3-shared/bin/pip3) install --user -r requirements-gpu.txt

export CUDA_VISIBLE_DEVICES=$(( 'nvidia-smi | grep " / .....MiB"|grep -n " .MiB / [0-9]....MiB"|cut -d : -f 1|head -n 1' - 1 ))

LD_LIBRARY_PATH="/share/apps/libc6_2.23/lib/x86_64-linux-gnu:/share/apps/libc6_2.23/lib64:/share/apps/gcc-6.2.0/lib64:/share/apps/gcc-6.2.0/lib:/share/apps/python-3.6.3-shared/lib:/share/apps/cuda-9.0/lib64:${LD_LIBRARY_PATH}" /share/apps/libc6_2.23/lib/x86_64-linux-gnu/ld-2.23.so $(command -v /share/apps/python-3.6.3-shared/bin/python3) -u $task train -c $working_directory/$config_file --dataset_split_file $working_directory/$data_split --model_dir $working_directory --save_seg_dir $working_directory

LD_LIBRARY_PATH="/share/apps/libc6_2.23/lib/x86_64-linux-gnu:/share/apps/libc6_2.23/lib64:/share/apps/gcc-6.2.0/lib64:/share/apps/gcc-6.2.0/lib:/share/apps/python-3.6.3-shared/lib:/share/apps/cuda-9.0/lib64:${LD_LIBRARY_PATH}" /share/apps/libc6_2.23/lib/x86_64-linux-gnu/ld-2.23.so $(command -v /share/apps/python-3.6.3-shared/bin/python3) -u $task inference -c $working_directory/$config_file --dataset_split_file $working_directory/$data_split --model_dir $working_directory --save_seg_dir $working_directory

