events - minds
confirmMind: mind 	
	"Remove the mind from the system"
	((LikeMindsConfirmMindEvent traceForOwner: self administrator)
		source: self;
		target: mind;
		send) result ifTrue: [
			"Enable Web Access if it exists"
			self enableWebAccessForMind: mind owner: self administrator.
		]