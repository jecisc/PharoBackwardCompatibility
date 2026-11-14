Extension { #name : 'ClassDescription' }

{ #category : '*PharoBackwardCompatibility-UpTo13' }
ClassDescription >> methodInstaller [
	"Answer an object installing compiled methods in me. In Pharo 14 it replaces #addAndClassifySelector:withMethod:inProtocol:."

	^ OCMethodInstaller new
]
