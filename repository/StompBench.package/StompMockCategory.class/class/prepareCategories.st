preparing
prepareCategories
	categories := Dictionary new.
	categories at: #book put: (self new id: 1; name: 'book'; description: 'some topic about book').
	categories at: #photo put: (self new id: 2; name: 'photo'; description: 'nice photos').
	categories at: #life put: (self new id: 3; name: 'life'; description: 'life is too short...').
	^categories