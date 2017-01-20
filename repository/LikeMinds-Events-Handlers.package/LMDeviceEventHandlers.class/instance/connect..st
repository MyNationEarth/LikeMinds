as yet unclassified
connect: request
	| email password mind |
	"I connect a mind to the system. New users are created if possible."
	email := request propertyAt: 'Identification'.
	password := request propertyAt: 'Password'.
	(mind := system findMindWithEmail: email)
		ifNil: [
			"Create Account"
			[
				mind := system newMindWithEmail: email password: password.
				request response propertyAt: 'NewAccount' put: 'Created'.
			]	on: Error
				do: [:ex |
					"Errors - Invalid Email Expection will be thrown"
					"Create a response to let user know email could not be delivered"
					request response propertyAt: 'Result' put: 'InvalidEmail'; send.
					^true
				].
		] ifNotNil: [
			"Verify Password"
			(mind verifyPassword: password) ifFalse: [
				"Create a response to let the user know the password is incorrect"
				request response propertyAt: 'Result' put: 'InvalidPassword'; send.
				^true
			]
		].

	"User is logged in"
	request response 
		propertyAt: 'Result' put: 'LoginSuccessful'.
	request response lmtpWrite: mind.
	request response send.
	^true