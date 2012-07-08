accessing
context
	"Answer the value of context"

	^ context ifNil: [context := StompReadContext on: self]