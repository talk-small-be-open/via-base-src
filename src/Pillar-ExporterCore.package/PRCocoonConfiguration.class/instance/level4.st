accessing
level4
	<cocoonParameter:
		'A dictionnary which can contains the associations: "numbering": aBoolean (to know if I need numerate level 4 titles), "size": aNumber (the number of numerator we want, if 0 we''ll not render the numerator) and "renderAs": "number"/"roman"/"letter"/"upperLetter" (to know if i need to render this title as a number, a roman number or a letter.)'>
	^ (self propertyAt: 'level4' default: [ self defaultLevel4 ]) parent: self level3