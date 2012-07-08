*Stomp-Core-writing
stompValueContentSize
	"For Mixed class which would like to write instance variables"
	((self stompShouldWriteInstanceVariables
			and: [self class isVariable])
			and: [self class instSize > 0])
		ifTrue: [^ 3].
	^ 1