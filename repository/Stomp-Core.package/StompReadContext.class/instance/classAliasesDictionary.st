accessing
classAliasesDictionary
	^ classAliasesDictionary ifNil: [classAliasesDictionary := IdentityDictionary new]