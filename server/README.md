# Scripts for controlling a via installation

Two main scripts for starting or stopping the whole application:

	via_start.sh
	via_stop.sh

Script for command line usage:

	executeSmalltalk.sh
	executeSmalltalkScript.sh
	restore_backup.sh
	shrink_gemstone.sh
	status.sh
	status_of_backup.sh

Scripts used by cron. Can also be used at command line if required:

	backup.sh
	backup_gemstone_db.sh
	backup_with_duplicity.sh
	delete_old_tmp_files.sh
	delete_old_tranlogs.sh

Auxiliary scripts for monit. If you use them, make sure monit is not monitoring concurrently:

	start_gemstone.sh
	start_netldi.sh
	start_web_gem.sh
	start_web_gems.sh
	stop_gemstone.sh
	stop_netldi.sh
	stop_web_gem.sh
	stop_web_gems.sh
