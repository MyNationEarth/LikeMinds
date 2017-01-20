LMEvent

LMEvent is the superclass of any class that makes a change to the LikeMinds model.

owner - the creator of the event.
source - the object that initiated the event.
target - the object that is targeted by the event.
trace - a LMEventTrace instance that traces the progress of this event.

Subclasses override #execute to perform the tasks associated with this event. And event may also trigger other events.