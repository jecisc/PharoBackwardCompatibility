Extension { #name : #TraitedMetaclass }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
TraitedMetaclass >> includesTrait: aTrait [

	<reflection: 'Class structural inspection - Traits'>
	^ self traitComposition includesTrait: aTrait
]
