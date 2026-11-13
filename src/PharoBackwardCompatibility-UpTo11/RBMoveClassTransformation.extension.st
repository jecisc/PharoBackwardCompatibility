Extension { #name : #RBMoveClassTransformation }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RBMoveClassTransformation class >> move: aClassName toPackage: aPackageName [
	"Before Pharo 12 a class moves to a category, which names an existing package when one is a prefix of it, so the package is registered first."

	self packageOrganizer ensurePackage: aPackageName.
	^ self move: aClassName to: aPackageName
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RBMoveClassTransformation class >> move: aClassName toPackage: aPackageName inTag: aTagName [
	"Before Pharo 12 a class moves to a category, which names an existing package when one is a prefix of it, so the package is registered first."

	self packageOrganizer ensurePackage: aPackageName.
	^ self move: aClassName to: aPackageName , '-' , aTagName
]
