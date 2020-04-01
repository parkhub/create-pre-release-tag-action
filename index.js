const exec = require("@actions/exec")

return exec.exec('npm start')
    .then(() => {
        process.exit(0)
    })
    .catch((err) => {
        console.error(err)
        process.exit(1)
    })