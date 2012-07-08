actions
classNamed: localClassName in: environmentQualifier 
	"override"
	| env |
	environmentQualifier ifNil: [^ self classNamed: localClassName].
				
	"Suppose namespace is not supported, so just use Smalltalk"
	env :=  Smalltalk.
	^ env
		at: localClassName
		ifAbsent: []