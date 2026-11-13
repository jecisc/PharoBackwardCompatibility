Extension { #name : #ClassDescription }

{ #category : #'*PharoBackwardCompatibility-UpTo10' }
ClassDescription >> formatter [

	^ self package packageManifestOrNil
		  ifNotNil: [ :manifest | manifest formatter ]
		  ifNil: [ RBProgramNode formatterClass new ]
]
