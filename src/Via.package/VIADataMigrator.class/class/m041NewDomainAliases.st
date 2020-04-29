as yet unclassified
m041NewDomainAliases
	| w |

	w := (self db websiteForLanguage: #italian).
	w aliasDomains: { '3-2-1-via.ch' }.

	w := (self db websiteForLanguage: #french).
	w aliasDomains: { '3-2-1-partez.ch' }.

	w := (self db websiteForLanguage: #german).
	w domain: '3-2-1-los.ch'.
	w aliasDomains: { '321clip.ch'. '123clip.ch' }.
