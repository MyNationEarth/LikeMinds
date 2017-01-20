events - minds
removeMind: mind 
	"Disable Web Access if it exists"
	self disableWebAccessForMind: mind owner: self administrator.
	
	"Remove the mind from the system"
	^(LikeMindsRemoveMindEvent traceForOwner: self administrator)
		source: self;
		target: mind;
		send;
		result