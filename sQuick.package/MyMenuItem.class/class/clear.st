as yet unclassified
clear
	"(self  allInstances size > 0) ifTrue:[
		1 to: (self allInstances size) do:[ :index|
			self allInstances at: index put: nil.
		]
	]"

	1 to: (self allInstances size) 
	do:[ :index|
			self allInstances at: index put: nil.
		].