rendering
renderJavascriptOn: html
	| script js |
	
	js := JSStream new.
	js nextPutAll: ('
var peer = new Peer("', thisPeerId, '", {host: "/", port: 443, path: "/peerjs", secure: true, debug: 0});

peer.on("open", function(id) {
	console.log("My peer ID is: " + id);
});

peer.on("error", function(error) {
	console.log("Peer error " + error);
});

peer.on("connection", function(c) {
	console.log("Incoming connection!");

	c.on("data", function(data) {').
	
	js javascript: onDataJs.

	js nextPutAll: '
		console.log("Received", data);
	});
});
'.

	startConnection ifTrue: [
		js nextPutAll: ('
var conn = peer.connect("', otherPeerId, '");
conn.on("open", function() {

	console.log("Outgoing Connection opened");

	conn.on("data", function(data) {
		console.log("Received", data);').

	js javascript: onDataJs.

	js nextPutAll: '
	});

	conn.send("Hi, we are connected");
});
'].

	script := js.	
	html scriptDefer: script