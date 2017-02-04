events - groups
leaveGroup: group mind: mind owner: owner
  | result event |
  event := LMLeaveGroupEvent forOwner: owner.
  result := event
    source: mind;
    target: group;
    send;
    result.
  ^ result