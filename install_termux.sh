#!/data/data/com.termux/files/usr/bin/bash
# 汽轮机效率计算器 - Termux 安装脚本
# 在 Termux 中运行: bash install_termux.sh

echo "安装 Python 和依赖..."
pkg update -y
pkg install -y python python-pip clang

echo "安装 iapws 蒸汽表库..."
pip install iapws

echo "下载计算器程序..."
cd ~
curl -O https://raw.githubusercontent.com/your-repo/turbine_efficiency.py
curl -O https://raw.githubusercontent.com/your-repo/turbine_efficiency_gui.py

echo "启动..."
echo "运行: python turbine_efficiency_gui.py"
echo ""
echo "注意: 此版本需要 X11 显示，建议安装 Termux:X11"
