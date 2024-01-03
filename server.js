const jsonServer = require('json-server')
const server = jsonServer.create()
const router = jsonServer.router('db.json')

// Add custom routes before JSON Server router
server.post('/api/user', (req, res) => {
  res.jsonp(req.body.query)
})

// Use default router
server.use(router)
server.listen(3000, () => {
  console.log('JSON Server is running')
})