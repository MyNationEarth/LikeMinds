instance creation
traceForOwner: anOwner
	"this message creates a new event with its trace enabled, and sets the owner and source to anOwner"
	^super new
		enableTrace;
		owner: anOwner;
		source: anOwner; 
		yourself.