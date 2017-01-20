instance creation
forOwner: anOwner
	"this message creates a new event and sets the owner and source to anOwner"
	^super new 
		owner: anOwner;
		source: anOwner; 
		yourself.