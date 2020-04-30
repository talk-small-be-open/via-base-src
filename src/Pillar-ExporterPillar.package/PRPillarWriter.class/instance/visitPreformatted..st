visiting-document
visitPreformatted: aPreformatted
	self
		writeRawDuring: [ 
			aPreformatted children
				do: [ :child | 
					canvas raw: aPreformatted class markup.
					self visit: child.
					canvas newLine ] ]