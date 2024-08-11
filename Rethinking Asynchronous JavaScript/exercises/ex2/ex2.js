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

function getFile(file) {
	let ret = null
	let cb = null
	fakeAjax(file, function(text){
		ret = text
		if(cb)
		{
			cb(ret)
		}
	})
	return function(cb1)
	{
		if(ret)
		{
			cb1(ret)
		}
		else
		{
			cb = cb1
		}
	}
}

// request all files at once in "parallel"
// ???
let file1 = getFile("file1")
let file2 = getFile("file2")
let file3 = getFile("file3")

file1(function(text){
	output(text)
	file2(function(text){
		output(text)
		file3(function(text){
			output(text)
		})
	})
})