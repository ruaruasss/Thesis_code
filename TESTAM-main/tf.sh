#!/bin/bash
#SBATCH -A p_tf_01                  # 指定项目名称
#SBATCH --partition=gpu              # 选择有效的分区
#SBATCH --gres=gpu:1                 # 请求 1 个 GPU
#SBATCH --job-name=testam_training   # 作业名称
#SBATCH --time=5:00:00              # 设置运行时间（根据需求修改）
#SBATCH --mem=20000                  # 设置内存大小，具体值可以根据你的需求修改
#SBATCH --mail-type=ALL              # 邮件通知类型
#SBATCH --mail-user=a93zfp@inf.elte.hu  # 邮件地址

module load cray-python/3.9.13.1

source ~/venv/bin/activate

# 执行训练脚本
python -u /home/p_tf_zy/p_tf_01/TESTAM-main/train.py