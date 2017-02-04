events - communications
newConversationParent: parent fields: fields owner: owner
  "Create a new Conversation in parent.conversations"

  | result event |
  event := LMNewConversationEvent traceForOwner: owner.
  result := event
    source: self;
    target: parent;
    fields: fields;
    send;
    result.	"Join the members to the conversation"
  (fields at: #'members')
    do: [ :member | self joinGroup: result mind: member owner: owner ].
  ^ result