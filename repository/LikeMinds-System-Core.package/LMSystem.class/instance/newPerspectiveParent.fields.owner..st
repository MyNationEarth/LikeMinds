events - perspective
newPerspectiveParent: parent fields: fields owner: owner
  "Add a new perspective to the system"

  | result event |
  event := LMNewPerspectiveEvent traceForOwner: owner.
  result := event
    source: self;
    target: parent;
    fields: fields;
    send;
    result.	"Automatically join the owner to the new perspective"
  result permissions
    setOwnerPermission: #'joinGroup';
    setOwnerPermission: #'leaveGroup';
    setOwnerPermission: #'addMembers'.
  parent == self
    ifFalse: [ self joinGroup: result mind: owner owner: owner ].
  ^ result