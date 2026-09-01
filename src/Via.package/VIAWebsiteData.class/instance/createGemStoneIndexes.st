gemstone
createGemStoneIndexes
	| spec |

"	VIAHelper isGemStone ifFalse: [ ^ self ]."
	
	spec := GsIndexSpec new
		identityIndex: 'each.roles.*';
		equalityIndex: 'each.lastLoginAt' lastElementClass: DateAndTime options: GsIndexOptions btreePlusIndex clearOptimizedComparison;
		equalityIndex: 'each.rememberToken' lastElementClass: String options: GsIndexOptions btreePlusIndex clearOptimizedComparison;
		unicodeStringOptimizedIndex: 'each.email' options: GsIndexOptions btreePlusIndex clearOptimizedComparison;
		unicodeStringOptimizedIndex: 'each.socialIds.*';
		yourself.
		
	spec createIndexesOn: users.
	
	spec := GsIndexSpec new
		identityIndex: 'each.user';
		yourself.
		
	spec createIndexesOn: portfolios.
