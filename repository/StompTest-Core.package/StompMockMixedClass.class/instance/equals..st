comparing
equals: other
	self class = other class ifFalse: [^false].
	instVar1 = other instVar1 ifFalse: [^false].
	instVar2 = other instVar2 ifFalse: [^false].

	^super = other