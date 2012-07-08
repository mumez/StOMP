accessing
default
	"Answer the value of default"

	^ default ifNil: [default := super new initialize]