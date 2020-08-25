uitext
isDefinedUiText: aKey
	"Check if there is a human given translation text"
	^ (self uiTextAt: aKey) ifNil: [ false ] ifNotNil: [ :pillar | pillar text ~= (self uiTextDefaultValue: aKey) ]