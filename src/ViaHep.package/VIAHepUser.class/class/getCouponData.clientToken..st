as yet unclassified
getCouponData: aCouponString clientToken: aClientToken

	"Get the (non-specified user) coupon data. Needs the auth token from the users authorization."
	
	| response |

	response := self callMethod: 'GET' data: nil headers: {'Authorization: Bearer ', aClientToken} endpoint: ('/api/partners/m2m/coupons/', aCouponString asString).

	"Handle API http status code"
	(response at: 'httpStatus') = 200 ifFalse: [ ^ nil ].

	response isDictionary ifFalse: [ self signalError: 'No coupon data' ].

	"TODO: Obsolete?"
	response at: 'error' ifPresent: [:text |
		self signalError: 'Error from API:' returnData: response
	].

	^ response at: 'data'