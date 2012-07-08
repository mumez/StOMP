accessing
context
	"Answer the value of context"

	^ context ifNil: [context := StompWriteContext on: self]