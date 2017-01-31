properties
passengerAt: id

	^ self passengers at: id ifAbsent: [ nil ]