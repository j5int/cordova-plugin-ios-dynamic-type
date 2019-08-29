var exec = require('cordova/exec');

exports.getDynamicType = function(success, error) {
    exec(success, function(err){
      console.error("An error occurred while fetching the preferredContentSize: " + err)
    }, "DynamicType", "get", []);
};
