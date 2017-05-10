function main() {
    //Parse POST JSON
    var loggerName = json.get("loggerName"),
        loggerLevel = json.get("loggerLevel");

    if (!json.isNull('loggerName') && !json.isNull('loggerLevel')) {
        //Call the Java method
        dynamicLogger.setLogLevel(loggerName, loggerLevel);
        model.result = "Successfully changed log level";
    } else {
        status.code = 404;
        status.message = "Can't change logger level, not all required parameters provided";
        status.redirect = true;
    }
}

main();