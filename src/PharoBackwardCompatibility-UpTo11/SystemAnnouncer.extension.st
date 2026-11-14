Extension { #name : 'SystemAnnouncer' }

{ #category : '*PharoBackwardCompatibility-UpTo11' }
SystemAnnouncer >> delayAnnouncementsAfter: aBlock [
	"Execute the block and store all the announcements made during its execution, then announce them all at once."

	(self suspendAllWhileStoring: aBlock) do: [ :announcement | self announce: announcement ]
]
