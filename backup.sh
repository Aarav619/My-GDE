#Backup of Gnome-Settings/icons/themes/Extension

#Creating a universal backup folder
mkdir -p ~/Documents/Gnome-Backup/

# Backup Gnome only settings
# dconf dump /org/gnome > gnome-backup

#Backup entire settings
dconf dump / > full-backup

# Backup icons and themes

#System wide icons and themes backup
# cd /usr/share/

# tar -cvpf custom-icons.tar.gz icons

# tar -cvpf custom-themes.tar.gz themes

# mkdir -p ~/Documents/Gnome-Backup/

# mv *.tar.gz /home/$(logname)/Documents/Gnome-Backup

# Backup of ~/.icons and ~/.themes folders. 

cd /home/$(logname)

cp -r .icons /home/$(logname)/Documents/Gnome-Backup

cp -r .themes /home/$(logname)/Documents/Gnome-Backup

echo -e "\nCompleted icons and theme backup..."

#Backup Gnome Extensions
mkdir -p ~/Documents/Gnome-Backup/

cd /home/$(logname)/.local/share/gnome-shell/

cp -r extensions /home/$(logname)/Documents/Gnome-Backup

echo -e "\nCompleted Shell-extensions backup..."

#Backup .zshrc
mkdir -p ~/Documents/Gnome-Backup/

cp -r /home/$(logname)/.zshrc /home/$(logname)/Documents/Gnome-Backup

echo -e "\nCompleted .zshrc backup..."

#Backup starship config
cp -r /home/$(logname)/.config/starship.toml /home/$(logname)/Documents/Gnome-Backup

echo -e "\nCompleted starship backup..."