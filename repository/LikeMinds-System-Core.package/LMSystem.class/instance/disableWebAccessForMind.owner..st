events - web
disableWebAccessForMind: mind owner: owner
  | result event |
  event := LMDisableWebAccessEvent forOwner: owner.
  result := event
    source: mind;
    target: self webKernel;
    send;
    result.
  ^ result