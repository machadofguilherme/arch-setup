#!/usr/bin/env fish
# ~/.local/bin/bluetooth-repair.fish
# Reseta o controlador Bluetooth RTL8821CE sem reiniciar o notebook

sudo btmgmt power off
sudo modprobe -r btusb
sleep 2
sudo modprobe btusb
sleep 3
sudo btmgmt power on
echo "Pronto — tenta reconectar o QCY H2S Lite agora."
