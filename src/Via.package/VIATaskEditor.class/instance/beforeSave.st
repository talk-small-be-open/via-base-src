as yet unclassified
beforeSave
	| visitor |

	visitor := VIABeforeSaveBrickVisitor website: self currentWebsite.
	visitor visit: task.