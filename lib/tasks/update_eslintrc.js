#!/usr/bin/env node

const fs = require('fs');

// .eslintrc will be created or overwritten by default.
fs.copyFile(__dirname + '/../templates/.eslintrc', '.eslintrc', (err) => {
    if (err) throw err;
    console.log('.eslintrc was copied to the project');
});
