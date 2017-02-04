events - minds
modifyContextPerspective: group mind: mind fieldModels: fieldModels owner: owner
  "Modify a Context"

  | event |
  event := LMModifyContextEvent traceForOwner: owner.
  ^ event
    source: group;
    target: mind;
    fieldModels: fieldModels;
    send;
    result