request handler
connection: lmtpConnection receivedRequest: request
	| profileSelector result |
		
	profileSelector := ((request propertyAt: 'Profile') + ':') asSymbol.
	result := handlers perform: profileSelector with: request.

	GRPlatform current transactionMutex 
		critical: [ 
			GRPlatform current doCommitTransaction ].	
	^result