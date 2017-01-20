Systems
removeSystemNamed: key
	(self systems keys includes: key)
		ifFalse: [self error: 'Like Minds System with key "', key asString, '" does not exist.'].
	^LikeMindsSystems removeKey: key