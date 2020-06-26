as yet unclassified
visitCompositeTask: aCompositeTask
	self write: aCompositeTask displayName.
	self newline.
	self write: '====================================================='.
	self newline.
	self newline.
	
	aCompositeTask children do: [:each |
		self write: '-----------------------------------------------------'.
		self newline.
		each acceptVisitor: self.
		self newline.
	].

