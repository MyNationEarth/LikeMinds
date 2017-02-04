events - communications
removeConversation: conversation parent: parent owner: mind
  "Remove conversation from the parent conversations"

  | event |
  event := LMRemoveConversationEvent traceForOwner: mind.
  ^ event
    source: conversation;
    target: parent;
    send;
    result