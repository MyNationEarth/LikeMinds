events - minds
newMindWithEmail: anEmailAddress password: aPassword
	"Add a new mind to the system"
	| newMind fieldValues commsId |
	"If the membership exists - raise exception"
	(self findMindWithEmail: anEmailAddress) ifNotNil: [self error: #MembershipExists].
	
	"Send confirmation email"
	commsId := UUID new.
	(self sendConfirmationForAccount: anEmailAddress password: aPassword commsId: commsId) ifFalse: [
		self error: #InvalidEmail.
	].
	"Create new account"
	newMind := ((LikeMindsNewMindEvent traceForOwner: self administrator)
		source: self;
		target: perspective;
		email: anEmailAddress; 
		password: aPassword;
		send;
		result).
	"Update the commsId"
	newMind _commsId: commsId.
	
	"Install the mind's personal perspective - FUTURE: This should not be added by default"
	self joinGroup: perspective mind: newMind owner: newMind.

	(fieldValues := Dictionary new)
		at: #displayName put: 'My Perspective Directory'.
	self newPerspectiveParent: newMind fields: fieldValues owner: newMind.
	^newMind