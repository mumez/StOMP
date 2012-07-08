instance creation
signal: aString
	| inst |
	inst := self new.
	inst messageText: aString.
	^MpPortableUtil default signalException: inst