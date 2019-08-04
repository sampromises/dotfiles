main: backup link

backup:
	./backup.sh --backup

restore:
	./backup.sh --restore

link:
	./backup.sh --link
	
unlink:
	./backup.sh --unlink

clean: unlink restore
