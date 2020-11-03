// Youtube helper functions for via

// Convert early callback from Youtube-API-JS into a promise object, used in the
// late JS code from seaside
// A bit dirty, but did not find out an elegant way
var youTubeIframeAPIReady_resolve;
var youTubeIframeAPIReady = new Promise(function(resolve, reject) { 
    youTubeIframeAPIReady_resolve = resolve; 
});

function onYouTubeIframeAPIReady() {
	youTubeIframeAPIReady_resolve();
}
