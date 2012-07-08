preparing
prepareClassToCodeMap: classToCodeMap
	"By default, just create counter-map"
	self codeToClass keysAndValuesDo: [:key :value |
		classToCodeMap at: value put: key
	]