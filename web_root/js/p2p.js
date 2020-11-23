//
// VIA Javascript Library (Frontend & Backend)
//
// Remark: Try to be plain Javascript, since we defer load all the other libraries
// like jQuery etc., or be sure that those functions are not called early.
//


//
// Peer to peer, see VIAP2pComponent
//
// Seems to me a bit too much C-style programming, but anyway, keep it simple in here

var p2pPeers, p2pConnections;

function p2pInit(elementId, myPeerId, onDataFunction) {
	p2pPeers = {};
	p2pConnections = {};

	var openPeer = new Promise( (resolve, reject) => {
	  var peer = new Peer(myPeerId, {host: "/", port: 443, path: "/peerjs", secure: true, debug: 0, pingInterval: 2000, });
		var element = document.getElementById(elementId);
	
	  peer.on("open", function(id) {
			console.log("My peer ID is: " + id);
			resolve(peer);
			element.classList.add('open');
		});

	  peer.on("error", function(error) {
			console.log("Peer error " + error);
			reject("Could not connect to peer server: "+error);
//			element.classList.add('error');
		});

		// On incoming connection
	  peer.on("connection", function(c) {
			console.log("Incoming connection!");
			p2pSetConnection(elementId, c.peer, c);

			c.on("error", function(error) {
				console.log("Connection error ", error);
				element.classList.add('error');
			});

			c.on("data", function(data){p2pOnData(elementId, data, c, onDataFunction)});
		});

	});

	p2pPeers[elementId] = openPeer;

	return openPeer;
}

function p2pOnData(elementId, data, connection, callback) {
	var element = document.getElementById(elementId);
	element.classList.remove('error');
	element.classList.add('data');

	console.log("Received", data);

	if (data == 'ping') {
		connection.send('pong');
		return;
	}

	if (data == 'pong') {
		$(element).animate({opacity: 0.4}, 1000);
		$(element).animate({opacity: 1}, 1000);
		return;
	}

	if (callback) {
		callback(data);
	}
}


function p2pStart(elementId, myPeerId, otherPeerId = null, onDataFunction = null, sendOnConnect = null) {
	return p2pInit(elementId, myPeerId, onDataFunction).then(peer => {

		if (otherPeerId) {
			console.log('Trying to contact', otherPeerId);
			return p2pGetConnection(elementId, otherPeerId).then(conn => {
				var element = document.getElementById(elementId);

				conn.on("data", function(data){p2pOnData(elementId, data, conn, onDataFunction)});

				conn.on("error", function(error) {
					console.log("Connection error ", error);
					element.classList.add('error');
					// remove cache, so its recreated
					p2pSetConnection(elementId, otherPeerId, null);
				});

				if (sendOnConnect) {
					conn.send(sendOnConnect);
				}

				return conn;
			})
		}
	}, error => alert(error) )
}

		
// Get a connection object, which we have tracked, or generate a new
function p2pGetConnection(elementId, otherPeerId) {
	return new Promise( (resolve, reject) => {
		const element = document.getElementById(elementId);
		const connectionId = 'p2p_' + elementId + '_' + otherPeerId;	
		var conn = p2pConnections[connectionId];

		if (conn) {
			if (conn.open) {
				resolve(conn);
			}
			else {
				conn.on("open", function() {
					resolve(conn);
				})				
			}
		}
		else {
			const openPeer = p2pPeers[elementId];

			openPeer.then(peer => {
				conn = peer.connect(otherPeerId, {reliable: true});
				console.log("Outgoing connection created");
				conn.on("open", function() {
					console.log("Outgoing connection opened");
					p2pSetConnection(elementId, otherPeerId, conn);
					resolve(conn);
				})
			});
		}
	})
}

// Save an existing connection
function p2pSetConnection(elementId, otherPeerId, connection) {
	const connectionId = 'p2p_' + elementId + '_' + otherPeerId;	
	p2pConnections[connectionId] = connection;
}


function p2pSend(elementId, otherPeerId, data) {
	p2pGetConnection(elementId, otherPeerId).then(conn => {
		console.log("Sending " + data);
		conn.send(data);
	})
}
