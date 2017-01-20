Sending Email
send
	| rc |
	^self isEnabled
		ifFalse: [self saveToFile]
		ifTrue: [
			rc := self openTcpConnection.
			rc
				ifTrue: 
					[rc ifTrue: [rc := self readSmtpResult].
					rc ifTrue: [rc := self sendHelo].
					rc ifTrue: [rc := self readSmtpResult].
					rc ifTrue: [rc := self sendMailFrom].
					rc ifTrue: [rc := self readSmtpResult].
					rc ifTrue: [rc := self sendRcptTo].
					rc ifTrue: [rc := self readSmtpResult].
					rc ifTrue: [rc := self sendDataBeg].
					rc ifTrue: [rc := self readSmtpResult].
					rc ifTrue: [rc := self sendHeader].
					rc ifTrue: [rc := self sendData].
					rc ifTrue: [rc := self sendDataEnd].
					rc ifTrue: [rc := self readSmtpResult].
					rc ifTrue: [rc := self sendQuit].
					rc ifTrue: [rc := self readSmtpResult].
			self close].
			^rc]