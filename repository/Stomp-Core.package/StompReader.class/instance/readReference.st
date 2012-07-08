reading-dispatched
readReference
	| refId |
	refId := self readObject.
	^(self context at: refId) yourself