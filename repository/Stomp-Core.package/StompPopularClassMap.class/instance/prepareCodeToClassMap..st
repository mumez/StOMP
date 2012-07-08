preparing
prepareCodeToClassMap: codeToClassMap
	| selectors |
	selectors := self popularClassSelectors.
	1 to: selectors size do: [:idx | | kls |
		kls := self perform: (selectors at: idx).
		kls ifNotNil: [codeToClassMap at: idx put: kls].	
	]