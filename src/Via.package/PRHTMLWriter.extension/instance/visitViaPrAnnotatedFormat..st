*Via
visitViaPrAnnotatedFormat: aFormat
	canvas tag
		name: 'span';
		class: aFormat annotation;
		with: [super visitViaPrAnnotatedFormat: aFormat]