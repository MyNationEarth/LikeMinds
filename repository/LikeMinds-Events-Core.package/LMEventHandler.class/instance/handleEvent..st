events
handleEvent: anEvent
	anEvent processForHandler: self.
	events add: anEvent.