actions
codeAt: aClass ifPresent: aBlock
	| code |
	code := self classToCode at: aClass ifAbsent: [].
	code == nil ifFalse: [aBlock value: code]