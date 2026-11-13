Extension { #name : #RPackage }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> ensureTag: aTag [
	"Answer the tag of that name, or a tag object, adding it first when I do not have it yet. No tag at all is the tag named after me, where Pharo 11 files the classes of a package that have none."

	(aTag isNil or: [ aTag = '' ]) ifTrue: [
		^ self addClassTag: self name ].
	^ self addClassTag: (aTag isString
			   ifTrue: [ aTag ]
			   ifFalse: [ aTag name ])
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> hasTag: aTag [
	"Takes a package tag or a package tag name as parameter and return true if I include this package tag."

	^ self includesClassTagNamed: (aTag isString
			   ifTrue: [ aTag ]
			   ifFalse: [ aTag name ])
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> isUndefined [
	"Pharo 12 files a class that belongs to no package in an undefined package. Before it, every package is defined."

	^ false
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> tagNames [

	^ self classTags collect: [ :tag | tag name ]
]
