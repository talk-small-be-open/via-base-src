testing
isDomain: aDomain subDomainAnyOf: aDomainsCollection
	"Checks if aDomain is a subdomain of any of the aDomainsCollection domains"
	^aDomainsCollection anySatisfy: [:eachDomain | aDomain endsWith: ('.', eachDomain)]