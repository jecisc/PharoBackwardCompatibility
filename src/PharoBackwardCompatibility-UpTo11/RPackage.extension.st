Extension { #name : #RPackage }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> tagNames [

	^ self classTags collect: [ :tag | tag name ]
]
