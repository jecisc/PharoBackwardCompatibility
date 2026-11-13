Extension { #name : #RBMoveClassTransformation }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RBMoveClassTransformation class >> move: aClassName toPackage: aPackageName [
	"Pharo 12 moves a class to a package that exists. Before it, the package names the category the class moves to."

	^ self move: aClassName to: aPackageName
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RBMoveClassTransformation class >> move: aClassName toPackage: aPackageName inTag: aTagName [
	"Pharo 12 moves a class to a package and tag that exist. Before it, they name the category the class moves to."

	^ self move: aClassName to: aPackageName , '-' , aTagName
]
