var express = require('express'),
    path = require('path'),
    app = express();

app.use(express.static(path.join(__dirname, 'dist')));

app.get('/*', (req, res) => {
    res.send('./dist/index.html');
});

app.use(function (err, req, res, next) {
    console.error(err.stack);
    next(err);
});

app.listen(process.env.PORT || 80);