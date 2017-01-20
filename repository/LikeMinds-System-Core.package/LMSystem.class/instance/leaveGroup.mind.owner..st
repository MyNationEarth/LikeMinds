events - groups
leaveGroup: group mind: mind owner: owner
	| result event |
	event := LikeMindsLeaveGroupEvent forOwner: owner.
	result := event
		source: mind;
		target: group;
		send;
		result.
	^result