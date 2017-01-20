private
sendHelo

	^self sendCrlfString: 'HELO ', self ownDomainName.