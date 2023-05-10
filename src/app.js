const express = require('express');

const app = express();

app
  .get('/', (r, rs) => {
    rs.send({ message: 'Hello Node Terraform' });
  })
  .listen(3000, () => console.log('Server running at http://localhost:3000'));
