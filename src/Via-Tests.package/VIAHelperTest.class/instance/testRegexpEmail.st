tests
testRegexpEmail
	"Test values adapted from https://gist.github.com/cjaoude/fd9910626629b53c4d25"
	
	| r |
	r := VIAHelper regexpEmail.
	
'email@example.com
firstname.lastname@example.com
email@subdomain.example.com
firstname+lastname@example.com
email@123.123.123.123
1234567890@example.com
email@example-one.com
_______@example.com
email@example.name
email@example.museum
email@example.co.jp
firstname-lastname@example.com' linesDo: [ :each |
	self assert: (each matchesRegex: r) ].

'mail.with@spaceatend.ch 
plainaddress
#@%^%#$@#$@#.com
@example.com
Joe Smith <email@example.com>
email.example.com
email@example@example.com
.email@example.com
email.@example.com
あいうえお@example.com
email@example.com (Joe Smith)
email@example
email@-example.com' linesDo: [ :each |
	self deny: (each matchesRegex: r) ].