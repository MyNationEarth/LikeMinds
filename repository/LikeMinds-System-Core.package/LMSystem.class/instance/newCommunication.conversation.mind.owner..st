events - communications
newCommunication: contents conversation: conversation mind: mind owner: owner
	| result event |
	event := LikeMindsSendCommunicationEvent traceForOwner: owner.
	result := event
		source: mind;
		target: conversation;
		contents: contents;
		send;
		result.
	^result