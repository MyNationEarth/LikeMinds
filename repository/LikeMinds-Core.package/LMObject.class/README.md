LMObject

This is the root of all LikeMinds classes.

All subclasses are able to write themselves onto a stream, with the goal of being materialised on another platform. This is achieved via the LMObject>>lmtpWiteOn: aStream
method. Each method that overrides this method should call
super lmtpWriteOn: aStream
before adding their own personal information.

LMObject also allows any subclass to log information into the current log (typically represented by stdout).