#!/bin/bash
apt update
apt install python3.10-venv bc libgl1 libglib2.0-0 -y
# 删除多余的 pip.conf
find / -name pip.conf 2>/dev/null | grep -v "/etc/pip.conf" | xargs -I {} rm -f {}
python -m pip install --upgrade pip
cd /root/gpufree-data/stable-diffusion-webui/
python -m venv venv
. venv/bin/activate
pip install clip torch==2.1.2 torchvision==0.16.2
pip install /root/gpufree-share/open_clip/bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b.zip # github 有时候连不上
pip install https://github.com/mlfoundations/open_clip/archive/bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b.zip --prefer-binary
