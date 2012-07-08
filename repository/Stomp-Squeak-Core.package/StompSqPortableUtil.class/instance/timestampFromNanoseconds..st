converting
timestampFromNanoseconds: nanoseconds
	"^ Timestamp fromNanoseconds: nanoseconds"
	^ TimeStamp epoch + (Duration nanoSeconds: nanoseconds)