writing-custom
writePrimitiveValues: anArray
	"MessagePack types only"
	"Never store object refs"
	^super writeObject: anArray