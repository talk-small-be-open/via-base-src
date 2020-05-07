as yet unclassified
m040ChangeFrenchWebsite
	| fd |

	fd := (self db websiteForLanguage: #french) data.

	fd exerciseLevels: #('A1' 'A2' 'B1' 'B2').