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

let req = []
let ret = {}
function getFile(file) {
	req.push([file, 0, 0])
	fakeAjax(file,function(text){
		ret[file] = text
		for(let i = 0; i < req.length; i++)
		{
			if(req[i][0] == file && req[i][1] == 0)
			{
				req[i][1] = 1
				break
			}	
		}

		for(let i = 0; i < req.length; i++)
		{
			if(req[i][1] == 0)
			{
				break
			}
			if(req[i][1] == 1 && req[i][2] == 0)
			{
				req[i][2] = 1
				output(ret[req[i][0]])
			}
		}
	});
}

// request all files at once in "parallel"
getFile("file1");
getFile("file2");
getFile("file3");
