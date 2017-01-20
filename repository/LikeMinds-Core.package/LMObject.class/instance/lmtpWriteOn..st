transport protocol
lmtpWriteOn: aStream
  "I write myself onto a stream to be sent as data in a LMTPMessage"

  aStream
    nextPut: self className size;
    nextPutAll: self className asByteArray