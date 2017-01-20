as yet unclassified
processRemoveGroupEvent: anEvent
	"TODO: Create 'conditional' events to remove contexts in minds - This is conditional processing of
	events and may need more thought"
	"ie. do we want to throw away the info the user has already entered? maybe to save them entering it again?"
	anEvent source members do: [:mind |
		self system leaveGroup: anEvent source mind: mind owner: anEvent owner
	]