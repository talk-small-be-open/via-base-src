as yet unclassified
renderUploadFormOn: html
	html heading level2; with: 'Upload'.
	errorMessage ifNotNil: [
		html div class: 'error'; with: errorMessage.
		self clearErrorMessage].

		html form multipart; with: [
			html table class: 'wide horizontal'; with: [
				html tableRow: [
					html tableData: 'File'.
					html tableData: [
						html fileUpload
							callback: [ :value | self receiveFile: value ]]].
				html tableRow: [
					html tableData: 'Comment'.
					html tableData: [
						html textInput
							class: 'long';
							callback: [:value | self tempFileReference comment: value]]]].
			html submitButton
				callback: [self validateAndAnswer];
				with: 'Upload now!'.
			html space.
			html anchor
				callback: [self cancel];
				with: 'Cancel'
]