Extension { #name : #TraitedClass }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
TraitedClass >> includesTrait: aTrait [

	<reflection: 'Class structural inspection - Traits'>
	^ self traitComposition includesTrait: aTrait
]
