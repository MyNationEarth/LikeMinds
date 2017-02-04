events - communications
newCommunication: contents conversation: conversation mind: mind owner: owner
  | result event |
  event := LMSendCommunicationEvent traceForOwner: owner.
  result := event
    source: mind;
    target: conversation;
    contents: contents;
    send;
    result.
  ^ result