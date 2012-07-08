hooks
checkSerializerExists
	"override"
	^(Smalltalk at: #ObjectWriteStream ifAbsent: [Smalltalk at: #Xtreams ifAbsent:[]]) notNil