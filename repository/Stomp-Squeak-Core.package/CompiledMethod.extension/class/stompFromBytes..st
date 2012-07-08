*Stomp-Squeak-Core-instance creation
stompFromBytes: rawBytes
	| inst |
	inst := super basicNew: rawBytes size.
	inst replaceFrom: 1 to: inst size with: rawBytes startingAt: 1.
	^inst
	