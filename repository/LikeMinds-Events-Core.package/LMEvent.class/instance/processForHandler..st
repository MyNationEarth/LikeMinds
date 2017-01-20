Processing
processForHandler: handler
	self result: self execute.
	self postProcessHandler: handler.