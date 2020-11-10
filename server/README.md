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

	backup.sh STONE [DUPLICITY_TARGET]
	backup_gemstone_db.sh STONE
	backup_with_duplicity.sh STONE [DUPLICITY_TARGET]
	delete_old_tmp_files.sh
	delete_old_tranlogs.sh

Auxiliary scripts for monit. If you use them, make sure monit is not monitoring concurrently:

	monit_start_stone.sh
	monit_start_netldi.sh
	monit_start_web_gems.sh
	monit_stop_stone.sh
	monit_stop_netldi.sh
	monit_stop_web_gems.sh

	start_web_gem.sh STONE PORT
	stop_web_gem.sh STONE PORT
