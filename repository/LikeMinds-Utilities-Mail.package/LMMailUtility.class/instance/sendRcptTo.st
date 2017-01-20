private
sendRcptTo
	| result |
	result := true.
	(self to subStrings: $;) ,(self cc subStrings: $;)
		do: [:mailAddress |
			mailAddress isEmpty
				ifFalse: [result := result and: [self sendCrlfString: ('RCPT TO:<', mailAddress add: '>'; yourself)] ] ].
	^result