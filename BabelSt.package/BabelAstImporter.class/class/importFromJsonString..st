as yet unclassified
importFromJsonString: aJsonString
	| jsonObject |
	jsonObject := Json readFrom: aJsonString readStream.
	^ self importFromJsonObject: jsonObject