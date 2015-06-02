as yet unclassified
readFiles
	((FileLocator workingDirectory / 'Documents') allFiles) sort do: [ :f|
		|d|
		d := Document new.
		d openWithFile: f.
		d title: (f basenameWithoutExtension ). ].