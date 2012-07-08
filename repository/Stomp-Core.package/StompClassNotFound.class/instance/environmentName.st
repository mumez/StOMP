accessing
environmentName
	"Answer the value of environmentName"
	environmentName ifNil: [^ environmentName].
	^ environmentName