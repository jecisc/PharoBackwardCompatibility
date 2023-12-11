Extension { #name : #RPackageOrganizer }

{ #category : #'*PharoBackwardCompatibility-UpTo12' }
RPackageOrganizer >> ensurePackage: aPackage [

	| package |
	package := aPackage isString
		           ifTrue: [ RPackage named: aPackage ]
		           ifFalse: [ aPackage ].
	^ self registerPackage: package
]
