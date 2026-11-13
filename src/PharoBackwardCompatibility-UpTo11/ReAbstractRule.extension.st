Extension { #name : #ReAbstractRule }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ReAbstractRule >> shouldCheckMethod: aMethod [
	"This is a hook when a rule is checking methods to speed up the rule and skip some methods for the nodes analysis."

	^ true
]
