Extension { #name : 'SpTActionContainer' }

{ #category : '*PharoBackwardCompatibility-UpTo12' }
SpTActionContainer >> ensureInternalActions [

	^ self ensureActionGroup
]
