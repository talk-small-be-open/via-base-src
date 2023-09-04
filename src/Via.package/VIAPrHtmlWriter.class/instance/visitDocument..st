visiting-document
visitDocument: aPillarDocument
	canvas tag
		name: 'span';
		parameterAt: 'class' put: 'pillarDocument';		
		with: [ super visitDocument: aPillarDocument ]