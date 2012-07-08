dispatching
readArraySized: size 
	size = 0 ifTrue: [| arr | self remember: (arr := self createArray: 0). ^arr].
	^self readArraySized: size atFirstTyped: self readType