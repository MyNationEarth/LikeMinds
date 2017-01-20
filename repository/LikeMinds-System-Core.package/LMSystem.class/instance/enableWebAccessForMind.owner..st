events - web
enableWebAccessForMind: mind owner: owner
	| result event |
	event := LikeMindsEnableWebAccessEvent forOwner: owner.
	result := event
		source: mind;
		target: self webKernel;
		send;
		result.
	^result