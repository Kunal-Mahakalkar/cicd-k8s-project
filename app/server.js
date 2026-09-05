const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
app.get('/', (req, res) => {
 res.json({
 message: 'Hello from CI/CD Pipeline v2.0!',
 version: '2.0.0',
 timestamp: new Date().toISOString(),
 environment: process.env.NODE_ENV || 'development'
 });
});
app.get('/health', (req, res) => {
    res.status(200).json({
 status: 'healthy',
 uptime: process.uptime(),
 timestamp: new Date().toISOString()
 });
});
app.listen(PORT, () => {
 console.log(`Server running on port ${PORT}`);
 console.log(`Environment: ${process.env.NODE_ENV || 'development'}`);
});