#Backup

# Backup Gnome only settings
# dconf dump /org/gnome > gnome-backup

#Backup entire settings
# dconf dump / > full-backup

# Backup icons and themes

#System wide icons and themes backup
# cd /usr/share/

# tar -cvpf custom-icons.tar.gz icons

# tar -cvpf custom-themes.tar.gz themes

# mkdir -p ~/Documents/Gnome-Backup/

# mv *.tar.gz /home/$(logname)/Documents/Gnome-Backup

# Backup of ~/.icons and ~/.themes folders. 

# cd /home/$(logname)

# cp -r .icons /home/$(logname)/Documents/Gnome-Backup

# cp -r .themes /home/$(logname)/Documents/Gnome-Backup

# echo -e "\nCompleted icons and theme backup..."

#Backup Gnome Extensions
# mkdir -p ~/Documents/Gnome-Backup/

# cd /home/$(logname)/.local/share/gnome-shell/

# cp -r extensions /home/$(logname)/Documents/Gnome-Backup

# echo -e "\nCompleted Shell-extensions backup..."


#Restore

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