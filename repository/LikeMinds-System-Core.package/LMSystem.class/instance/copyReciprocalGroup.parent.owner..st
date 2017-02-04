events - groups
copyReciprocalGroup: group parent: parent owner: owner
  "Add a new ReciprocalGroup to parent"

  | result event |
  event := LMCopyReciprocalGroupEvent traceForOwner: owner.
  result := event
    source: parent;
    target: group;
    send;
    result.
  ^ result