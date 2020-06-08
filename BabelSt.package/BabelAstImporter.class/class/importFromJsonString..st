as yet unclassified
importFromJsonString: aJsonString
	| jsonObject |
	jsonObject := NeoJSONReader fromString: aJsonString.
	^ self importFromJsonObject: jsonObject