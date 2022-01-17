backup:
		cd scripts && ./backup.sh && sudo ./sync.sh

restore:
		cd scripts && ./restore.sh

install-packages:
		cd scripts && sudo ./install-official-packages.sh && ./install-aur-packages.sh 