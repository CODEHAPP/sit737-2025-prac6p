const express = require('express');
const app = express();
const port = process.env.PORT || 3000;  // 默认使用 3000 端口

app.get('/', (req, res) => {
    res.send('Hello, Dockerized SIT737 Web App!');
});

// 监听 3000 端口
app.listen(port, '0.0.0.0', () => {
    console.log(`Server is running on port ${port}`);
});
