as yet unclassified
studentMembershipOf: aStudent
	^ studentMemberships at: aStudent ifAbsentPut: [ VIAStudentMembership student: aStudent ]