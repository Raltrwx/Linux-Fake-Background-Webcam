#!/bin/bash
#Don't run this as root
trizen -S linux-headers v4l2loopback-dkms python python-pip miniconda3
sudo ./v4l2loopback-install.sh
conda env create -n webcam --file environment.yaml
mkdir -p ~/.config/systemd/user
sudo cp fakewebcam.service ~/.config/systemd/user/
sudo systemctl daemon-reload
systemctl --user enable fakewebcam.service
echo "Installed Deps+v4l2loopback"
echo "User-Level systemd service installed & enabled"
echo "To start it: systemctl --user start fakewebcam.service"
echo "It pauses with no consumers, but feel free to shut it off with: systemctl --user stop fakewebcam.service"
