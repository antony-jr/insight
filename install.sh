#!/usr/bin/env bash
COMMIT="5afb39f"
echo -e "\e[1;34mInsight (git-commit $COMMIT)\e[0m, Tcl/Tk GUI for GDB Debugger."
echo -e "Copyright (C) Redhat, GNU General Public License v2."
echo -e "AppImage Packaged by Antony J.R <antonyjr@pm.me>."
echo ""

mkdir -p ~/Insight
rm -rf ~/Insight/insight
echo -e "Downloading Latest Insight..."
echo -n -e "\e[1;32m"
wget -q --show-progress --progress=bar:force -O ~/Insight/insight https://github.com/antony-jr/insight/releases/download/$COMMIT/Insight-x86_64-pc-linux-gnu-$COMMIT-x86_64.AppImage 2>&1
echo -e "\e[0m"

chmod a+x ~/Insight/insight
sed -i '/export PATH=$PATH:.*.\/Insight # Insight AppImage/d' ~/.bashrc
echo "export PATH=\$PATH:$HOME/Insight # Insight AppImage" >> ~/.bashrc

cd ~/Insight
mkdir -p .icons 
rm -rf squashfs-root

./insight --appimage-extract Insight.desktop > /dev/null
./insight --appimage-extract insight-icon.png > /dev/null

mv squashfs-root/insight-icon.png .icons/insight.png

sed -i 's+Name=Insight+Name=Insight GDB Debugger (git-'$COMMIT')+g' squashfs-root/Insight.desktop
sed -i 's+Exec=insight-wrapper+Exec='$HOME'\/Insight\/insight+g' squashfs-root/Insight.desktop
sed -i 's+Icon=insight-icon+Icon='$HOME'\/Insight\/.icons\/insight.png+g' squashfs-root/Insight.desktop

cp -f squashfs-root/Insight.desktop ~/Desktop
cp -f squashfs-root/Insight.desktop ~/.local/share/applications/Insight.desktop

rm -rf squashfs-root

echo "Updated ~/.bashrc, Restart your Console/Terminal."
echo -e "\e[1;34mStart Insight from your Application Menu.\e[0m"
echo -e "\e[42mInstalled Insight Stable (git-commit $COMMIT) (Target CPU: x86_64).\e[0m"
