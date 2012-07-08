*Stomp-Core-writing
stompDo: aBlock
	self class isFixed ifTrue:[
		"I'm not an Collection - so just write myself"
		^ aBlock value: self
	].

	self size = 0 ifTrue: [^ aBlock value: self].
	1 to: self size do: [:idx |
		aBlock value: (self at: idx)
	].