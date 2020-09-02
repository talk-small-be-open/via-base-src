<?php

//
// Uploader handler for audio recorder.
// For via project.
//

// No cache headers
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

// Assume failure, if script will exit before end
http_response_code(500);

// 5 minutes max execution time
@set_time_limit(5 * 60);

// Settings
$uploadSessionId = $_GET['id'];
$targetDir = ini_get("upload_tmp_dir") . DIRECTORY_SEPARATOR . "audio-recorder" . DIRECTORY_SEPARATOR . $uploadSessionId;

// Create target dir
if (!file_exists($targetDir)) {
	@mkdir($targetDir, 0777, true);
}

// Create unique filename
$fileName = uniqid("file_");
$filePath = $targetDir . DIRECTORY_SEPARATOR . $fileName;

// Open the temp file
if (!$out = @fopen("{$filePath}.part", "wb")) {
	die('Failed to open output stream.');
}

if (!empty($_FILES)) {
	if ($_FILES["data"]["error"] || !is_uploaded_file($_FILES["data"]["tmp_name"])) {
		die('Failed to move uploaded file.');
	}

	// Read binary input stream and append it to temp file
	if (!$in = @fopen($_FILES["data"]["tmp_name"], "rb")) {
		die('Failed to open input stream.');
	}
}

// Write input to temp file
while ($buff = fread($in, 4096)) {
	fwrite($out, $buff);
}

@fclose($out);
@fclose($in);


// Strip the temp .part suffix off 
rename("{$filePath}.part", $filePath);


// // Production Server on Linux
// if (PHP_OS == 'Linux') {
//     // chown($filePath, 'ubuntu');
//     chgrp($targetDir, 'ubuntu');
//     chgrp($filePath, 'ubuntu');
// }   

// Development on MacOS
if (PHP_OS == 'Darwin') {
    // chown($filePath, 'ubuntu');
    chgrp($targetDir, 'everyone');
    chgrp($filePath, 'everyone');
}   

chmod($targetDir, 0775);
chmod($filePath, 0660);

// Status is OK, if we get to here
http_response_code(200);

// Return the name of the temp file
exit($fileName);
