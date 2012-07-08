private
mappedClassAt: classNameSymbol in: environmentQualifier 
	| classNameSymbolOrNewClass |
	classNameSymbolOrNewClass := self mappedClassNameAt: classNameSymbol asSymbol in: environmentQualifier.
	^ classNameSymbolOrNewClass isBehavior 
		ifTrue: [classNameSymbolOrNewClass]
		ifFalse: [StompPortableUtil default classNamed: classNameSymbolOrNewClass in: environmentQualifier].