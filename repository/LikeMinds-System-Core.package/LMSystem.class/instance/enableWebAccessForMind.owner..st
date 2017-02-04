events - web
enableWebAccessForMind: mind owner: owner
  | result event |
  event := LMEnableWebAccessEvent forOwner: owner.
  result := event
    source: mind;
    target: self webKernel;
    send;
    result.
  ^ result