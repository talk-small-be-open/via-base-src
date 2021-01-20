as yet unclassified
offerDownload: aLocalFileReference named: aFilename message: aMessageKey
	| downloader |

	downloader := VIADownloadDocumentComponent named: aFilename action: [
		self sendFileToBrowser: aLocalFileReference named: aFilename
	].

	downloader textMessage: aMessageKey.
	
	self lightbox: 'Download' component: downloader.