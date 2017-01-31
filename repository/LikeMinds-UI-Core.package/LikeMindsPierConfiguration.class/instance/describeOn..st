as yet unclassified
describeOn: config
	(config list: #likeMindsSystem)
		group: #likeMinds;
		options: [ LikeMindsSystem systems values] magritteDynamicObject.
	config
		at: #rootClass put: LikeMindsPierFrame