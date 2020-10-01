*Via
default
	"The default maximum number dictionary entries to accept."
	
	"^ 256"

"OPTIMIZE: Instead of patching this method from Zinc, we could set maximumNumberOfDictionaryEntries:
in the Zinc Server, but I did not figure out, how to do that in GemStone, since they run in separate
gem processes:

WAServerManager default adaptors do: [ :each |
	each server maximumNumberOfDictionaryEntries: 4096 ]
"

	"nil=unlimited"
	^4096