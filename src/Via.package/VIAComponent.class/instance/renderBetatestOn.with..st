as yet unclassified
renderBetatestOn: html with: aRenderable
	self ifBetatest: [ 
		html span class: 'betatestArea'; with: aRenderable ]