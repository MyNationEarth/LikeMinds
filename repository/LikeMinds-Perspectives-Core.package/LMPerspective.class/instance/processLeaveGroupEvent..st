as yet unclassified
processLeaveGroupEvent: anEvent
	"Automatically add a new context when joining a perspective"
	self system removeContextInMind: anEvent source perspective: self