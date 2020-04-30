accessing
level5
	<cocoonParameter:
		'A dictionnary which can contains the associations: "numbering": aBoolean (to know if I need numerate level 5 titles), "size": aNumber (the number of numerator we want, if 0 we''ll not render the numerator) and "renderAs": "number"/"roman"/"letter"/"upperLetter" (to know if i need to render this title as a number, a roman number or a letter.)'>
	^ (self propertyAt: 'level5' default: [ self defaultLevel5 ]) parent: self level4