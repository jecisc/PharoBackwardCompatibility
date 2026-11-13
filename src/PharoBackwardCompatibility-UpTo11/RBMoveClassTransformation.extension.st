Extension { #name : #RBMoveClassTransformation }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RBMoveClassTransformation class >> move: aClassName toPackage: aPackageName [

	^ self move: aClassName to: aPackageName
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RBMoveClassTransformation class >> move: aClassName toPackage: aPackageName inTag: aTagName [

	^ self move: aClassName to: aPackageName , '-' , aTagName
]
