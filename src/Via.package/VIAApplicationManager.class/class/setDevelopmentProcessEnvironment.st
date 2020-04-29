as yet unclassified
setDevelopmentProcessEnvironment
"	OSProcess thisOSProcess environmentAt: #PATH put: '/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/mysql/bin'"
	
"OSSUnixSubprocess new
	shellCommand: 'ps -fea | grep Pharo > /tmp/testShellCommandWithStreamRedirects.deleteme';
	redirectStdout;
	runAndWaitOnExitDo: [ :command :outString |
		outString inspect. 					
	]."