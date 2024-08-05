*Via
visitViaPrAnnotatedFormat: aFormat
	canvas tag
		name: 'span';
		parameterAt: 'class' put: aFormat annotation;
		with: [super visitViaPrAnnotatedFormat: aFormat]