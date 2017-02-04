events - perspective
modifyPerspective: target fields: fields owner: owner
  "Modify a perspective"

  | event |
  event := LMModifyPerspectiveEvent traceForOwner: owner.
  ^ event
    source: self;
    target: target;
    fields: fields;
    send;
    result