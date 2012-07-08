fixtures
timestamp1
	| timestamp tsClass |
	tsClass := StompPortableUtil default popularClassMap timestampClass.
	timestamp := tsClass date: (StompPortableUtil default dateFromSeconds:  3330720000) time: (Time fromSeconds: 13506). 
	^timestamp 