#Restoration of my GDE

#Full Restore
# dconf load / < full-backup

# Gnome only settings Restore
# dconf load /org/gnome < gnome-backup

# echo -e "\nCompleted Gnome-Settings restoration..."

#Restore system wide icons and themes
# sudo tar --extract --file custom-icons.tar.gz -C /usr/share/ --strip-components=1 --overwrite 

# sudo tar --extract --file custom-themes.tar.gz -C /usr/share/ --strip-components=1 --overwrite

#Restore .icons and .themes for "/" directory
# cp -r .icons /home/$(logname)/

# cp -r .themes /home/$(logname)/

# echo -e "\nCompleted icons and theme restoration..."

#Restore Gnome-Extensions
# cp -r extensions  /home/$(logname)/.local/share/gnome-shell/

# echo -e "\nCompleted Gnome-Extensions restoration..."

#Restore .zshrc
# cp -r .zshrc /home/$(logname)/

# echo -e "\nCompleted .zshrc restoration..."

#Restore Starship
cp -r starship.toml /home/$(logname)/.config/