as yet unclassified
cleanup
	| deadline |

	"Hm, big question mark: Why do we delete some answer objects? Answers which are being checked are timestamped immediately and therefore are not deleted here. Some utility answer objects are not used as answers and therefore are deleted after 1 minute, but that will lead to strange effects, while executing a task. But why deleting them anyway?!"

	"Alte Antwortelemente entfernen"
"	deadline := DateAndTime now - 1 minute.
	answers do: [:each |
		each keysAndValuesRemove: [:key :answer |
			answer lastAccessDateTime notNil and: [answer lastAccessDateTime < deadline]
	]]"