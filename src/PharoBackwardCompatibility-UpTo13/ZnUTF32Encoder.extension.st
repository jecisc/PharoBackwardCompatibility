Extension { #name : 'ZnUTF32Encoder' }

{ #category : '*PharoBackwardCompatibility-UpTo13' }
ZnUTF32Encoder >> forwardOnStream: aStream [

	aStream skip: 4
]
