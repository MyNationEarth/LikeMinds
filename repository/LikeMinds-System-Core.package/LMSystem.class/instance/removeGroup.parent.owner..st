events - groups
removeGroup: group parent: parent owner: mind
  "Remove group from the parent groups"

  | event |
  event := LMRemoveGroupEvent traceForOwner: mind.
  ^ event
    source: group;
    target: parent;
    send;
    result