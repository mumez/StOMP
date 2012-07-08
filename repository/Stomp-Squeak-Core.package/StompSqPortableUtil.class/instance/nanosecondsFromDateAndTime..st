converting
nanosecondsFromDateAndTime: dateAndTime
	"Answer the number of nanoseconds since January 1, 1901."
	^dateAndTime asSeconds * 1000000000 + dateAndTime nanoSecond