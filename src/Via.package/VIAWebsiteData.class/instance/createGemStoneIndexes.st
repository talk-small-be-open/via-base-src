gemstone
createGemStoneIndexes
	| spec |

"	VIAHelper isGemStone ifFalse: [ ^ self ]."
	
	"OPTIMIZE: Maybe set email to empty string and not nil, so that we can omit clearOptimizedComparison"
	
	spec := GsIndexSpec new
		identityIndex: 'each.roles.*';
		equalityIndex: 'each.lastLoginAt' lastElementClass: DateAndTime
			options: (GsIndexOptions btreePlusIndex clearOptimizedComparison + GsIndexOptions reducedConflict);
		equalityIndex: 'each.cachedLastExerciseActivityAt' lastElementClass: DateAndTime
			options: GsIndexOptions btreePlusIndex clearOptimizedComparison;
		equalityIndex: 'each.rememberToken' lastElementClass: String
			options: GsIndexOptions btreePlusIndex clearOptimizedComparison;
		unicodeStringOptimizedIndex: 'each.email' options: GsIndexOptions btreePlusIndex clearOptimizedComparison;
		unicodeStringOptimizedIndex: 'each.socialIds.*';
		yourself.
		
		
	spec createIndexesOn: users.
	
	spec := GsIndexSpec new
		identityIndex: 'each.user';
		yourself.
		
	spec createIndexesOn: portfolios.
