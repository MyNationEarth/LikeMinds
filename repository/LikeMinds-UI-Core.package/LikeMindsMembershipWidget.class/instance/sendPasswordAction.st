as yet unclassified
sendPasswordAction
	[
		createResult := (self system resetPasswordForEmail: emailAddress)
			ifTrue: [
				"Password email sent"
				#PasswordReminderSent
			] ifFalse: [
				"Password email not sent"
				#PasswordReminderCanNotBeSent
			]
	] on: Error
	do: [:ex |
		"Create a response to let user know there is no membership with the supplied email"
		createResult := #InvalidEmail
	]