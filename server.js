const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.send('build na esteira...')
})

app.listen(3000)

console.log('Server on port 3000')

