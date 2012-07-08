instance creation
loadInstVarsBlock: loadInstVarsBlock loadAdditionsBlock: loadAdditionsBlock
	| inst |
	inst := self new.
	inst loadInstVarsBlock: loadInstVarsBlock.
	inst loadAdditionsBlock: loadAdditionsBlock.
	^ inst