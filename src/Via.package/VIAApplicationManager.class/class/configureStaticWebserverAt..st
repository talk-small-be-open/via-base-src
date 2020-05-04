pharo
configureStaticWebserverAt: aString
	ZnZincStaticServerAdaptor default useDefaultExpirationHeaders.
	ZnZincStaticServerAdaptor default server delegate serveFilesFrom: aString.
	ZnZincStaticServerAdaptor default server delegate staticDelegate directory: (ZnFileSystemUtils directory: aString).