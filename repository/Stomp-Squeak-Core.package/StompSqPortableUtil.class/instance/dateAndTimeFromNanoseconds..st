converting
dateAndTimeFromNanoseconds: nanoseconds
	^ DateAndTime epoch + (Duration nanoSeconds: nanoseconds)