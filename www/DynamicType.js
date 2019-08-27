var exec = require('cordova/exec');

exports.getDynamicType = function(success, error) {
    exec(success, function(err){
      console.error("help? "+err)
    }, "DynamicType", "get", []);
};
