as yet unclassified
mind
	^self context 
		at: #mind 
		ifAbsent: [
			self context at: #mind put:
				((LMMind new)
					userName: 'testUser';
					password: 'testpassword';
					yourself)
		]