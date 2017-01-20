as yet unclassified
processLeaveGroupEvent: anEvent
	(anEvent source groups detect: [:group | group key = key]) members remove: anEvent owner