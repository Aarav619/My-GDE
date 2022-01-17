#Restoration of my GDE

#Full Restore
dconf load / < ../full-backup

# Gnome only settings Restore
# dconf load /org/gnome < gnome-backup

echo -e "\nCompleted Gnome-Settings restoration..."

#Restore system wide icons and themes
# sudo tar --extract --file custom-icons.tar.gz -C /usr/share/ --strip-components=1 --overwrite 

# sudo tar --extract --file custom-themes.tar.gz -C /usr/share/ --strip-components=1 --overwrite

#Restore .icons and .themes for "/" directory
cp -r ../.icons /$HOME/

cp -r ../.themes /$HOME/

echo -e "\nCompleted icons and theme restoration..."

#Restore Gnome-Extensions
cp -r ../extensions  /$HOME/.local/share/gnome-shell/

echo -e "\nCompleted Gnome-Extensions restoration..."

#Restore .zshrc
cp -r ../.zshrc /$HOME/

echo -e "\nCompleted .zshrc restoration..."

#Restore Starship
cp -r ../starship /$HOME/.config

echo -e "\nCompleted starship restoration..."

#Restore Wallpapers
mkdir -p $HOME/Pictures/Wallpapers

cp -r ../Wallpapers/. $HOME/Pictures/Wallpapers