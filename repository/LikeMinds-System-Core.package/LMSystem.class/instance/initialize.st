bootstrap
initialize
	| fields group |
	super initialize.
	"Handlers for iPhone/iPad connections"
	handlers := LikeMindsDeviceEventHandlers new.
	handlers system: self.
	"Create the log for this system"
	"OSkLogSwitch makeDefaultLogToFileNamed: '/usr/local/likeminds/likeMindsEvent.log'.
	log := OSkLogSwitch default.
	log close."  	"Disable Logging for testing"
	self log: 'LikeMinds version ', self versionString, ' Bootstrapping...'.
	"Bootstrap the root perspective."
	(fields := Dictionary new)
		at: #displayName put: 'Like Minds Directory';
		at: #comment put: 'The Directory sits at the top of the Like Minds Perspective Heirarchy. None of the information you place in the directory is shared with anyone, however as you join other Perspectives, you can choose to share Directory information with others.'.
	(self newPerspectiveParent: self fields: fields owner: self) 
		permissions
			setOwnerPermission: #joinGroup;
			setOwnerPermission: #addGroup;
			setOwnerPermission: #addMembers;
			setOwnerPermission: #createPerspective;
			setOwnerPermission: #removeGroup;
			setOtherPermission: #createContext;
			setOtherPermission: #joinGroup;
			setOtherPermission: #leaveGroup.

	"Set up the administrator mind"
	self propertyAt: #administrator put: self.
	self propertyAt: #administrator put: (self newMindWithEmail: self class rootEmailAddress password: 'admin').
	perspective owner: self administrator.
	(self propertyAt: #administrator) _confirmed: true.
	
	"Create the 'Friends' reciprocal group"
	(fields := Dictionary new)
		at: #displayName put: 'Friends';
		at: #comment put: 'My Like Minds Friends';
		at: #reciprocalDisplayName put: 'People who think of you as a friend.';
		at: #reciprocalComment put: 'Minds who have added you to their group of Friends.'.
	group := self newReciprocalGroupParent: perspective fields: fields owner: self administrator.
	group setAutoCopy. "NOTE: Don't like this much, Refactor into version 2 component"
	group permissions 
		clearPermissions;
		setOtherPermission: #copyGroup.

	self log: 'LikeMinds version ', self versionString, ' Bootstrapping Complete.'