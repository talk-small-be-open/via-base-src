testing
isActive
	^ifBlock isNil or: [(ifBlock value: self object) = true]