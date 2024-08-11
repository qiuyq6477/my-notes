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
	return new Promise(function(resolve){
		fakeAjax(file,resolve);
	});
}

// Request all files at once in
// "parallel" via `getFile(..)`.
//
// Render as each one finishes,
// but only once previous rendering
// is done.

const req = ["file1", "file2", "file3"]
// let plist = []
// for(let i = 0;i < req.length; i++)
// {
// 	let p = getFile(req[i])
// 	plist.push(p)
// 	if(i > 0)
// 	{
// 		plist[i - 1] = plist[i - 1].then(function(){
// 			return p
// 		})
// 		.then(output)
// 	}
// 	else
// 	{
// 		plist[0] = p.then(output)
// 	}
// }

const plist = req.map(getFile)
plist.reduce(function combine(total, current, index){
	return total.then(function(){
		return current
	})
	.then(output)
}, Promise.resolve())

// 等于
Promise.resolve()
.then(function(){
	return p1
})
.then(output)
.then(function(){
	return p2
})
.then(output)
.then(function(){
	return p3
})
.then(output)