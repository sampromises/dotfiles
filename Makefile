main: backup link

backup:
	./backup.sh --backup

restore:
	./backup.sh --restore

link:
	./backup.sh --link
	./setup_git.sh
	
unlink:
	./backup.sh --unlink
	rm ~/.gitconfig

clean: unlink restore
