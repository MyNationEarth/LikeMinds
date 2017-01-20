as yet unclassified
handleEvent: anEvent
	anEvent processForHandler: self.
	events add: anEvent.