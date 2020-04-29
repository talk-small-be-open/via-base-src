rules creation
default
	self validateTitle.
	self validateAcronym.
	self validateHomepageUrl.


	"We do not validate the email domains default. The adding of a new domain is protected by a validation rule. But we need to have
	the possibility to add some odd domains by the admins."
	"NOT! self validateEmailDomains"