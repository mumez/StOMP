hooks
checkSerializerExists
	"override"
	^(Smalltalk at: #SrpConfiguration ifAbsent: [Smalltalk at: #SRP ifAbsent:[]]) notNil