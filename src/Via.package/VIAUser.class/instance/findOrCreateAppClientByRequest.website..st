as yet unclassified
findOrCreateAppClientByRequest: aWaRequestContext website: aWebsite
	| cookieName appClient durationDays |

	"Set a cookie and stores the current application client (=installation) with the user. So we have a container
	to store settings and data per installation. This technique is not very accurate, and can also lead to more
	instance than the user really has, since it builds on cookies which can be deleted by the user itself.
	But its a poor man solution, which fits the basic needs."

	"Get or create a cookie for the client = installed app, namespaced with the user.
	Since there could be more than one user on the same device"	
	cookieName := 'appclient_', self uuidString.

	(aWaRequestContext request cookieAt: cookieName) ifNotNil: [ :cookie |
		appClient := self findAppClientById: cookie value
	].

	"Create new, if none found or no cookie sent"
	appClient ifNil: [ appClient := self createNewAppClient ].
	
	appClient touch.
	
	"Keep two years, to possibly detect annualy reusage of licenses"
	durationDays := 365 * 2.
	
	"Set new or reset existing cookie"
	aWaRequestContext response addCookie: 
		(aWaRequestContext newCookie
			path: '/';
			key: cookieName;
			value: appClient id;
			discard: false;
			secure: true;
			httpOnly: true;
			expireIn: durationDays days;
			sameSite: 'Strict'; "Oder Lax? Bei Strict würde es nicht gesendet, wenn der Link z.B. in einem Email geklickt wird"
			comment: ('App-Client-Cookie of ', aWebsite title);
			yourself)	.
				
	^ appClient