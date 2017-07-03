var minute = 1000 * 60;
var exec = require('child_process').exec
var log = require('single-line-log').stdout

exec('cryptocheck gdax eth', function(error, stdout, stderr) {
	log(stdout)
})

setInterval(function() {
	exec('cryptocheck gdax eth', function(error, stdout, stderr) {
       		log(stdout)
       	})
}, minute)

