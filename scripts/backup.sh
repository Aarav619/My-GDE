#Backup of Gnome-Settings/icons/themes/Extension
export backup_path=$HOME/Documents/Gnome-Backup

#Creating a universal backup folder
mkdir -p $backup_path

# Backup Gnome only settings
# dconf dump /org/gnome > gnome-backup

#Backup entire settings
dconf dump / > $backup_path/full-backup

echo -e "\nCompleted Gnome-Settings backup"

# Backup icons and themes

#System wide icons and themes backup
# cd /usr/share/

# tar -cvpf custom-icons.tar.gz icons

# tar -cvpf custom-themes.tar.gz themes

# mv *.tar.gz $backup_path

# Backup of ~/.icons and ~/.themes folders. 

cd /$HOME

cp -r .icons $backup_path

cp -r .themes $backup_path

echo -e "\nCompleted icons and theme backup..."

#Backup Gnome Extensions
cd /$HOME/.local/share/gnome-shell/

sudo cp -r extensions $backup_path

echo -e "\nCompleted Shell-extensions backup..."

#Backup .zshrc
cp -r /$HOME/.zshrc $backup_path

echo -e "\nCompleted .zshrc backup..."

#Backup starship config
cp -r /$HOME/.config/starship.toml $backup_path

echo -e "\nCompleted starship backup..."

#Backup Wallpaper directory
cp -r $HOME/Pictures/Wallpapers $backup_path

echo -e "\nCompleted wallpapers backup..."

#Backup .vimrc
cp -r $HOME/.vimrc $backup_path

echo -e "\nCompleted .vimrc backup..."

#Backup neofetch config
cp -r $HOME/.config/neofetch/ $backup_path

echo -e "\nCompleted neofetch config backup..."
