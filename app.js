//simple web server
//import an instance of express.js framework
const express = require('express')
const app = express()

//npm package that makes obtaining the ip address much easier
const ip = require("ip")

//set port to localhost:3000
const port = 3000

//json objects set as variable/constant
const someList = {
        timestamp: new Date(),
        ip: ip.address()
}

//http request to the home route
//response sends the "someList json object back to the client"
app.get('/', (req,res) => {
    res.send(someList)
})

//set webserver to listen on port (public port)
app.listen(port, () => {
    console.log("app is listening on 3000")
})
