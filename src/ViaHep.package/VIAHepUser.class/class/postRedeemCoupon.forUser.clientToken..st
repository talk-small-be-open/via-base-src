as yet unclassified
postRedeemCoupon: aCouponString forUser: aUserIdString clientToken: aClientToken

	"Get the (non-specified user) coupon data. Needs the auth token from the users authorization."
	
	| response data |

	data := { 'code'->aCouponString. 'redeem_for_platform'->'klaro' } asDictionary.

	response := self callMethod: 'POST' data: data headers: {'Authorization: Bearer ', aClientToken} endpoint: ('/api/partners/m2m/users/', aUserIdString, '/coupons/redeem').

	"Handle API http status code"
	(response at: 'httpStatus') = 200 ifFalse: [ ^ nil ].

	response isDictionary ifFalse: [ self signalError: 'No coupon data' ]