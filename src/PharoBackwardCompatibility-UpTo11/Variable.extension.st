Extension { #name : #Variable }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
Variable >> isPseudoVariable [
	"thisContext, super and self are reserved variables, which Pharo 12 renames pseudo-variables."

	^ self isReservedVariable
]
