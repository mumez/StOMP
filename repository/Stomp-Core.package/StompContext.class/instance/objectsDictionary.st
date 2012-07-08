accessing
objectsDictionary
	"Answer the value of objectsDictionary"

	^ objectsDictionary ifNil: [objectsDictionary := self objectDictionaryClass new: 20]