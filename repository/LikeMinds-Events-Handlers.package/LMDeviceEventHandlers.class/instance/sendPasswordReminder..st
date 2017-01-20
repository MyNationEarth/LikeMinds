as yet unclassified
sendPasswordReminder: request
	| email |
	email := request propertyAt: 'Identification'.
	[
		(system resetPasswordForEmail: email)
			ifTrue: [
				"Password reset and email sent"
				request response propertyAt: 'Result' put: 'PasswordReminderSent'.
			] ifFalse: [
				"Password not reset and email not sent"
				request response propertyAt: 'Result' put: 'PasswordReminderCanNotBeSent'.
			]
	] on: Error
	do: [:ex |
		"Create a response to let user know there is no membership with the supplied email"
		request response propertyAt: 'Result' put: 'InvalidAccount'.
	].

	request response send.
	^true