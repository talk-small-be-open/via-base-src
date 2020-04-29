rulesets
validateTimeframe
	| today |
	today := Date today.
	
	self validationGroup: [  
		self validateRange
			of: #earliestStartDate;
			named: #opp:earliestStartDate;
			beNilAllowed;
"			minimum: today;"
			maximum: today + (730 days).

		self validateRange
			of: #latestEndDate;
			named: #opp:latestEndDate;
			beNilAllowed;
			minimum: [self object earliestStartDate]]