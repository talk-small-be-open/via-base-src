as yet unclassified
svgCss: aClassString style: aCssString viewBox: aViewboxString with: anSvgString
	self svg
		class: aClassString;
		style: aCssString;
		attributeAt: 'viewBox' put: aViewboxString;
		with: [
			self html: anSvgString
		]