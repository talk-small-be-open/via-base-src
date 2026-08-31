gemstone
createGemStoneIndexes
	| spec |

"	VIAHelper isGemStone ifFalse: [ ^ self ]."
	
	spec := GsIndexSpec new
		identityIndex: 'each.roles.*';
		yourself.
		
	spec createIndexesOn: users.