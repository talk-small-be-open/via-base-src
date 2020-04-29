as yet unclassified
detectWebsite
	| host |
	host := self requestContext request host.
	
	website := self db websites
		detect: [:each | each matchesHost: host]
		ifNone: [
			| else |
			else := self db websites first.
			
			self isDevelopment ifTrue: [
				else := self db websites
					detect: [:each | host includesSubstring: each code]
					ifNone: [	else]
			].
			
			else].