private
connectTo: portNumber on: host 
	"Connect the receiver to the server socket identified by portNumber and 
	host. host can be the name of the host or its address. 
	Returns true if the connection succeeded and false if not."

	| res |
	res := true.
	[res isKindOf: Boolean]
		whileTrue: 
			[res := self
						_twoArgPrim: 2
						with: host
						with: portNumber.
			res == false
				ifTrue: 
					["would have blocked"
					res := self writeWillNotBlockWithin: 100.
					self _isWritable
						ifTrue: [res := self]
						ifFalse: 
							["The nonblocking connect failed."
							self _hadException ifTrue: [self _clearEventFlags].
							self _setError: 'nonblock connect()'.
							res := nil]]].
	res == nil
		ifTrue: [^false]
		ifFalse: [^true]