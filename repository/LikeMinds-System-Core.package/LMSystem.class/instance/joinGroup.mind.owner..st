events - groups
joinGroup: group mind: mind owner: owner
  | result event |
  event := LMJoinGroupEvent forOwner: owner.
  result := event
    source: mind;
    target: group;
    send;
    result.
  ^ result