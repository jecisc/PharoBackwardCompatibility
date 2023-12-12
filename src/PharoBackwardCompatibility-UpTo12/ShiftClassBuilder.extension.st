Extension { #name : #ShiftClassBuilder }

{ #category : #'*PharoBackwardCompatibility-UpTo12' }
ShiftClassBuilder >> traits: aValue [
	"Added during the merge of FluidClassBuilder and ShiftClassBuilder"

	^ self traitComposition: aValue
]
