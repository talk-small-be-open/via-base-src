accessing
templateContent
	^ template ifNil: [ self class defaultTemplateString ] ifNotNil: [ template contents ]