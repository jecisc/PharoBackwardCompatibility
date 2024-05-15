Extension { #name : #TaSequence }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
TaSequence >> includesTrait: aTrait [

	^ members anySatisfy: [ :member | member includesTrait: aTrait ]
]
