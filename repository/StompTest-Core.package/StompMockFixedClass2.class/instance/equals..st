comparing
equals: other
	self class = other class ifFalse: [^false].
	instVar1 = other instVar1 ifFalse: [^false].
	instVar2 = other instVar2 ifFalse: [^false].
	instVar3 = other instVar3 ifFalse: [^false].
	instVar4 = other instVar4 ifFalse: [^false].
	instVar5 = other instVar5 ifFalse: [^false].

	^true