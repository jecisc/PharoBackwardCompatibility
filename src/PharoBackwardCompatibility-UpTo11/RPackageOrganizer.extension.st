Extension { #name : #RPackageOrganizer }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackageOrganizer >> ensurePackage: aPackage [
	"Answer the package of that name, or a package object, registering it first when the organizer does not have it yet."

	^ self
		  packageNamed: (aPackage isString
				   ifTrue: [ aPackage ]
				   ifFalse: [ aPackage name ]) asSymbol
		  ifAbsent: [
			  self registerPackage: (aPackage isString
					   ifTrue: [ RPackage named: aPackage ]
					   ifFalse: [ aPackage ]) ]
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackageOrganizer >> hasPackage: aPackage [
	"Takes a package or a package name as parameter and return true if I include this package."

	^ aPackage isString
		  ifTrue: [
			  self packageNamed: aPackage asSymbol ifAbsent: [ ^ false ].
			  ^ true ]
		  ifFalse: [ self packages includes: aPackage ]
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackageOrganizer >> packageNamed: aString ifPresent: aBlock [

	^ (self packageNamed: aString ifAbsent: [ nil ]) ifNotNil: [ :package | aBlock cull: package ]
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackageOrganizer >> removePackage: aPackage [

	self
		packageNamed: (aPackage isString
				 ifTrue: [ aPackage ]
				 ifFalse: [ aPackage name ])
		ifPresent: [ :package | package removeFromSystem ]
]
