const exec = require("@actions/exec")

return exec.exec('release-it patch --preRelease=qa --ci --no-npm')
    .then(() => {
        process.exit(0)
    })
    .catch((err) => {
        console.error(err)
        process.exit(1)
    })