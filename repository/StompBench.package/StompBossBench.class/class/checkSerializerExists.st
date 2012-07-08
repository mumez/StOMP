hooks
checkSerializerExists
	"override"
	^(Smalltalk at: #BinaryObjectStorage ifAbsent:[]) notNil