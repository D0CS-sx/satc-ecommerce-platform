const http = require('http');

http.createServer((req, res) => {
  if (req.url === '/health') {
    res.writeHead(200);
    return res.end('ok');
  }
  res.writeHead(200);
  res.end('SATC platform - placeholder');
}).listen(3000);
