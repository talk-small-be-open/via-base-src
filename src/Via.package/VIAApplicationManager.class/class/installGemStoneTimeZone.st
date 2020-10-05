gemstone
installGemStoneTimeZone

"TODO: Dies muss als SystemUser via topaz in GemStone eingepflegt werden"
"	| swap aTimeZone |

	swap := true.

	aTimeZone := TimeZone fromLinux.

	aTimeZone isNil ifTrue: [
		aTimeZone := TimeZone named: 'Europe/Zurich'].

	swap
	   ifTrue: [TimeZone default become: aTimeZone]
	   ifFalse: [TimeZone default: aTimeZone].
"

	TimeZone default installAsCurrentTimeZone
