rendering
renderJsOn: html
	| js jsUploadedEventHandler |
	jsUploadedEventHandler := (html jQuery ajax
		callback: [:name | self ajaxUploadedFile: name]
		value: (JSStream on: 'ajaxParameter');
		onError: (html javascript alert: 'Error with ajax communication to application!')).

	js := (JSStream on: ('
$(document).ready(function() {

var uploader = new plupload.Uploader({
	browse_button: "pluploadBrowseButton",
	url: "/upload_gateway/upload.php?id=', uploadSessionUuid,'"
//	chunk_size: "200kb",
//	max_retries: 3
});
 
uploader.init();

uploader.bind("FilesAdded", function(up, files) {
  var html = "";
  plupload.each(files, function(file) {
    html += "<li id=\"" + file.id + "\">" + file.name + " (" + plupload.formatSize(file.size) + ") <b>Ready ...</b></li>";
  });
  document.getElementById("pluploadFilelist").innerHTML += html;
});

uploader.bind("UploadProgress", function(up, file) {
  document.getElementById(file.id).getElementsByTagName("b")[0].innerHTML = "<span>" + file.percent + "%</span>";
});

uploader.bind("FileUploaded", function(up, file, result) {
	if (result.status == 200) {
		var ajaxParameter = result.response + "/" + file.name;
')), jsUploadedEventHandler, (JSStream on: '
	} else {
		alert("Upload error!");
	}
});

uploader.bind("UploadComplete", function(up, file) {
	// Timeout, damit ajax calls fertig machen können
	setTimeout(function() {
		location.reload();
	}, 1000)
});

uploader.bind("Error", function(up, err) {
  alert("\nError #" + err.code + ": " + err.message);
});

document.getElementById("pluploadStartButton").onclick = function() {
  uploader.start();
};

});
').

	html script: js.
