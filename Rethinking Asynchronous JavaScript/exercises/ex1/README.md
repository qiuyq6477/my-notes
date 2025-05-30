# Instructions

1. This exercise calls for you to write some async flow-control code. To start off with, you'll use callbacks only.

2. Expected behavior:
	- Request all 3 files at the same time (in "parallel").
	- Render them ASAP (don't just blindly wait for all to finish loading)
	- BUT, render them in proper (obvious) order: "file1", "file2", "file3".
	- After all 3 are done, output "Complete!".


```js
function fakeAjax(url,cb) {
	var fake_responses = {
		"file1": "The first text",
		"file2": "The middle text",
		"file3": "The last text"
	};
	var randomDelay = (Math.round(Math.random() * 1E4) % 8000) + 1000;

	console.log("Requesting: " + url);

	setTimeout(function(){
		cb(fake_responses[url]);
	},randomDelay);
}

function output(text) {
	console.log(text);
}

// **************************************
// The old-n-busted callback way

function getFile(file) {
	fakeAjax(file,function(text){
		fileReceived(file,text);
	});
}

function fileReceived(file,text) {
	// haven't received this text yet?
	if (!responses[file]) {
		responses[file] = text;
	}

	var files = ["file1","file2","file3"];

	// loop through responses in order for rendering
	for (var i=0; i<files.length; i++) {
		// response received?
		if (files[i] in responses) {
			// response needs to be rendered?
			if (responses[files[i]] !== true) {
				output(responses[files[i]]);
				responses[files[i]] = true;
			}
		}
		// can't render yet
		else {
			// not complete!
			return false;
		}
	}

	output("Complete!");
}

// hold responses in whatever order they come back
var responses = {};

// request all files at once in "parallel"
// 同时请求的话，回调之间必须要共享状态
getFile("file1");
getFile("file2");
getFile("file3");
```
