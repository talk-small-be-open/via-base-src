utilities
findFirstOf: anArray at: anInteger in: aString
	"Find the first non-escaped occurence of any of the search strings in anArray starting at anInteger in aString. Answer the search string or nil if not found."

	^ (self findPairFirstOf: anArray at: anInteger in: aString) value