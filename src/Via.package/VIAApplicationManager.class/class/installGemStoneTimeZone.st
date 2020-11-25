gemstone
installGemStoneTimeZone

"IMPORTANT: Must be SystemUser in topaz/GemStone to work"

"startTopaz STONE -l
In topaz:
  - set user SystemUser
  - set password ***
  - run
VIAApplicationManager installGemStoneTimeZone
%

"

" See file /opt/GsDevKit_home/shared/downloads/products/GemStone64Bit3.4.5-x86_64.Linux/upgrade/installtimezone.txt"
	| swap aTimeZone |

	swap := true.

	aTimeZone := TimeZone fromOS.

	aTimeZone isNil ifTrue: [
		aTimeZone := TimeZone named: 'Europe/Zurich'].

	swap
	   ifTrue: [TimeZone default become: aTimeZone]
	   ifFalse: [TimeZone default: aTimeZone].

	TimeZone default installAsCurrentTimeZone
