Extension { #name : #TaCompositionElement }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
TaCompositionElement >> includesTrait: aTrait [

	innerClass = aTrait ifTrue: [ ^ true ].

	^ innerClass traitComposition includesTrait: aTrait
]
