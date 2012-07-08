factories
person01
	| dict phoneNumbers |
	phoneNumbers := OrderedCollection new.
	phoneNumbers add: (Array with: 0 with: '000-1111-2222').
	phoneNumbers add: (Array with: 1 with: '222-3333-4444').
	phoneNumbers add: (Array with: 2 with: '555-6666-7777').
	
	dict := Dictionary new.
	dict at: 'id' put: self random.
	dict at: 'name' put: (self randomPhraseSized: 20).
	dict at: 'phoneNumbers' put: phoneNumbers.
	
	^dict