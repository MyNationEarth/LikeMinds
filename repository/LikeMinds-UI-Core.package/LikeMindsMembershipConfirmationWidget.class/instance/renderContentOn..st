as yet unclassified
renderContentOn: html
	hasBeenRemoved ifTrue: [
		html paragraph: 'The membership with the email ' + mind email + ' has been removed from the Like Minds System. Come back anytime!'.
		^self
	].
	self updateVariables.
	commsId ifNil: [
		html paragraph: 'No confirmation identifier was found. Please click on the link in the email you received, or paste the complete link from the email into your browser and try again.'.
		^self
	].
	mind ifNil: [
		html paragraph with: 'No membership was found with the supplied confirmation identifier. Please click on the link in the email, or paste the complete link into your browser and try again.'.
		html paragraph with: 'It is possible that this membership has been removed at your request and this is an old email. If this is the case, simply click on Membership and join again. You will receive a new confirmation email.'.
		^self
	].
	mind isConfirmed 
		ifTrue: [self renderConfirmationCompleteOn: html]
		ifFalse: [self renderConfirmationFormOn: html].