as yet unclassified
execute
	"Create a new mind with the supplied email and password if one doesn't already exist"
	"ToDo: Send confirmation email and don't create minds until response is processed"
	| emailAddress newMind |
	self checkPermission: #addMembers.
	emailAddress := self email.
	(target members detect: [:mind | mind email = emailAddress] ifNone: [nil]) == nil
		ifFalse: [^self error: 'Mind with email "', emailAddress asString, '" already exists'].
	(newMind := LikeMindsMind new)
		email: emailAddress;
		password: self password.
	newMind owner: newMind.
	newMind permissions
		setOwnerPermission: #joinGroup; "These should be added only once confirmed"
		setOwnerPermission: #addMembers;
		setOwnerPermission: #createPerspective;
		setOwnerPermission: #removeGroup.
	
	target members add: newMind. "NOTE: Should this be a join group event? or not for bootstrapping a new mind"
	"Add me as the first event for the new Mind."
	newMind events add: self.
	^newMind