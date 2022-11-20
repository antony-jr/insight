#!/usr/bin/env bash

echo -e "\e[1;34mInsight (git-commit 93ab4f7)\e[0m, Tcl/Tk GUI for GDB Debugger."
echo -e "Copyright (C) Redhat, GNU General Public License v2."
echo -e "AppImage Packaged by Antony J.R <antonyjr@pm.me>."
echo ""

mkdir -p ~/Insight

echo "Checking for Insight Updater."
if [ -f ~/Insight/.appimageupdater ]; then
    echo "Found Insight Updater."
else
    echo "Downloading Insight Updater..."
    echo -n -e "\e[1;32m"
    wget -q --show-progress --progress=bar:force -O ~/Insight/.appimageupdater "https://github.com/antony-jr/AppImageUpdater/releases/download/v2.0.0/appimageupdatercli-v2.0.0-x86_64.AppImage" 2>&1
    echo -e "\e[0m"
fi

chmod a+x ~/Insight/.appimageupdater
cd ~/Insight

echo ""
echo "Updating Insight..."
$(pwd)/.appimageupdater -t -D insight

if [ -f *.AppImage ]; then
   mv *.AppImage insight
else
   echo -e "\e[42mYou already have latest Insight Stable (git-commit 93ab4f7) (Target CPU: x86_64).\e[0m"
   exit
fi

sed -i '/export PATH=$PATH:.*.\/Insight # Insight AppImage/d' ~/.bashrc
echo "export PATH=\$PATH:$HOME/Insight # Insight AppImage" >> ~/.bashrc

mkdir -p .icons 
rm -rf squashfs-root

./insight --appimage-extract Insight.desktop > /dev/null
./insight --appimage-extract insight-icon.png > /dev/null

mv squashfs-root/insight-icon.png .icons/insight.png

sed -i 's+Name=Insight+Name=Insight GDB Debugger (git-93ab4f7)+g' squashfs-root/Insight.desktop
sed -i 's+Exec=insight-wrapper+Exec='$HOME'\/Insight\/insight+g' squashfs-root/Insight.desktop
sed -i 's+Icon=insight-icon+Icon='$HOME'\/Insight\/.icons\/insight.png+g' squashfs-root/Insight.desktop

cp -f squashfs-root/Insight.desktop ~/Desktop
cp -f squashfs-root/Insight.desktop ~/.local/share/applications/Insight.desktop

rm -rf squashfs-root

echo "Updated ~/.bashrc, Restart your Console/Terminal."
echo -e "\e[1;34mStart Insight from your Application Menu.\e[0m"
echo -e "\e[42mUpdated to Insight Stable (git-commit 93ab4f7) (Target CPU: x86_64).\e[0m"
