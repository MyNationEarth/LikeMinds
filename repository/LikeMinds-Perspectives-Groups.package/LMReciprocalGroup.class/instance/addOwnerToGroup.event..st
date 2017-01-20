as yet unclassified
addOwnerToGroup: group event: anEvent
	(group members includes: anEvent owner) ifFalse: [group members add: anEvent owner]