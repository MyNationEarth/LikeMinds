events - groups
newReciprocalGroupParent: parent fields: fields owner: owner
  "Add a new ReciprocalGroup to parent"

  | result event |
  event := LMNewReciprocalGroupEvent traceForOwner: owner.
  result := event
    source: self;
    target: parent;
    fields: fields;
    send;
    result.
  ^ result