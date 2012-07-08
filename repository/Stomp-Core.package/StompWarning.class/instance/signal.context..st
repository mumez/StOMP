signaling
signal: aClassName context: dictionary 
	self class suppressSignaling ifTrue: [^self].
	self className: aClassName.
	self context: dictionary.
	^MpPortableUtil default signalException: self