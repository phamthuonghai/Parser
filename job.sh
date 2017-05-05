#!/usr/bin/env bash
#
# Select Q
#$ -q albert.q
#
# Your job name
#$ -N tdozat
#
# Use current working directory
#$ -cwd
#
# Join stdout and stderr
#$ -j y
#$ -o tdozat.out
#
# Run job through bash shell
#$ -S /bin/bash
#
date
./venv/bin/python -u network.py --config_file config/conllu.cfg --save_dir saves/en-ud --data_dir ../data/ud-treebanks-conll2017/UD_English/en-ud
date
