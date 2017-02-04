events - minds
removeContextInMind: mind perspective: group
  "NOTE: Don't call this method directly. Use LeaveGroup to remove contexts"

  | context |
  context := (LMRemoveContextEvent traceForOwner: mind)
    source: group;
    target: mind;
    send;
    result.
  ^ context