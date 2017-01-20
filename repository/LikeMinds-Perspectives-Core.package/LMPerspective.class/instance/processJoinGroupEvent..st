as yet unclassified
processJoinGroupEvent: anEvent
	"Automatically add a new context when joining a perspective
	source: mind
	target: self, perspective to join"
	self system newContextInMind: anEvent source perspective: self.
	"Setup Reciprocal Groups"
	(self groups select: [:group | group autoCopy]) do: [:group |
		self system copyReciprocalGroup: group parent: (anEvent source contextForPerspective: self) owner: anEvent owner
	].