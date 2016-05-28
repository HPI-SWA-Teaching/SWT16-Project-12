as yet unclassified
getDetailsForA: aString withMBID: anotherString about: andAnotherString

	| reply resp xmldoc requestURL |
	(andAnotherString isNil)
		ifTrue: [requestURL := MBRequest baseURL, aString, '/', anotherString]
		ifFalse: [requestURL := MBRequest baseURL, aString, '/', anotherString, '?inc=', andAnotherString].
	resp := WebClient httpGet: requestURL.
	resp isSuccess ifFalse:[^self error: resp status].
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	^ xmldoc