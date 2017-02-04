bootstrap
populateHandlers
  "For each request coming from the LikeMinds client, there will be a key 'Profile' that matches a
	key in the handlers dictionary. The values in the dictionary are blocks that are executed with two
	arguments - the system and the request from the client ie:
		[;system :request | ]"

  LMDeviceEventHandlers defaultHandlers
    associationsDo: [ :handler | handlers at: handler key put: handler value ]