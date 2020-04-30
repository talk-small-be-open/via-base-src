testing
parameters: someParameters haveSize: aSize
	someParameters size = aSize
		ifFalse: [ 
			PRPropertyError
				signal:
					'Needed ' , aSize asString , ' parameter(s)for ' , self asString , ', receive ' , someParameters size asString
						, ' parameter(s)' ]