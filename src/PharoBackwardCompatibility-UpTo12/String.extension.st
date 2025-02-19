Extension { #name : 'String' }

{ #category : '*PharoBackwardCompatibility-UpTo12' }
String >> withPlatformLineEndings [
	"Answer a new instance where all occurrences of CRLF, CR and LF are substituted with the line ending used by default by the current platform."

	^ self withLineEndings: OSPlatform current lineEnding
]
