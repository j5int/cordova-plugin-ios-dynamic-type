// DynamicType.js
// Copyright 2019 j5 Software South Africa
// Licensed under the Apache-2.0 license.

var exec = require('cordova/exec');

exports.getDynamicType = function(success, error) {
    exec(success, function(err){
      console.error("An error occurred while fetching the preferredContentSize: " + err)
    }, "DynamicType", "get", []);
};
