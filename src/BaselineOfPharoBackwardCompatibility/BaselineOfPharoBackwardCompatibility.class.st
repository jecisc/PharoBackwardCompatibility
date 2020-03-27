"
I am a baseline to define the structure and dependencies of the PharoBackwardCompatibility project.
"
Class {
	#name : #BaselineOfPharoBackwardCompatibility,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoBackwardCompatibility
}

{ #category : #baseline }
BaselineOfPharoBackwardCompatibility >> baseline: spec [
	<baseline>
	spec for: (self pharoVersionsFrom: 6) do: [ spec package: 'PharoBackwardCompatibility-UpTo6' ].

	spec for: (self pharoVersionsFrom: 7) do: [ spec package: 'PharoBackwardCompatibility-UpTo7' ].

	spec for: (self pharoVersionsFrom: 8) do: [ spec package: 'PharoBackwardCompatibility-UpTo8' ]
]

{ #category : #baselines }
BaselineOfPharoBackwardCompatibility >> pharoVersionsFrom: aVersion [
	^ (aVersion to: SystemVersion current major) collect: [ :v | ('pharo' , v asString , '.x') asSymbol ]
]

{ #category : #accessing }
BaselineOfPharoBackwardCompatibility >> projectClass [
	^ [ self class environment at: #MetacelloCypressBaselineProject ]
		on: NotFound
		do: [ super projectClass ]
]
