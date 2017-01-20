as yet unclassified
initialize
	super initialize.
	contexts := Set new.
	groups := Set new.
	conversations := Set new.
	permissions := LikeMindsPermissions new.
	self _confirmed: false.