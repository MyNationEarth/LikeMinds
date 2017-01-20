events - minds
newContextInMind: mind perspective: group
  "NOTE: Don't call this method directly. Use JoinGroup to create contexts"

  | newContext |
  newContext := (LikeMindsNewContextEvent traceForOwner: mind)
    source: group;
    target: mind;
    send;
    result.
  ^ newContext