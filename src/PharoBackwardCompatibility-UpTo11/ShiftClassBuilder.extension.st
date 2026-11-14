Extension { #name : #ShiftClassBuilder }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ShiftClassBuilder >> install [
	"Install the class in the system environment"

	^ ShiftClassInstaller new makeWithBuilder: self
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ShiftClassBuilder >> sharedPoolsFromString: aString [
	"Set the shared pools of the class from their names separated by spaces, as in an old style class definition"

	self sharedPools: aString
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ShiftClassBuilder >> slotsFromString: aString [
	"Set the slots of the class from their names separated by spaces, as in an old style class definition"

	self slots: aString asSlotCollection
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ShiftClassBuilder >> tag: aString [

	aString ifNil: [ ^ self ].
	self category: (self category
			 ifNil: [ aString ]
			 ifNotNil: [ :cat | cat , '-' , aString ])
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ShiftClassBuilder >> traits: aValue [
	"Added during the merge of FluidClassBuilder and ShiftClassBuilder"

	^ self traitComposition: aValue
]
