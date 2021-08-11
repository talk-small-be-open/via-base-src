testing
isStudent
"not accurate enough:	^ self roles size = 1"

	"Not really straightforward, but in the frontend you are basically a student,
	except if you are teacher. You can additionally be any other role on top of that, too.
	Like betatester, admin, ... whether that makes sense or not..."
	^ self isTeacher not