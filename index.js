const exec = require("@actions/exec")

return exec.exec('npm install && DEBUG=release-it:*  release-it patch --preRelease=qa --ci --no-npm');