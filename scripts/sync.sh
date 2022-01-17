#Creating respective directory to sync backup files

#sourcing bash.sh to use exported path variable
source <(grep '^export .*=' backup.sh)

restore_path=~/Drive-A/CodingStuff/Git/Github/My-Zsh-Backup/My-Zsh

mkdir -p $restore_path

#sync changes to directory
sudo cp -r $backup_path/. $restore_path

#changing ownership
sudo chown -R $USER: $HOME
