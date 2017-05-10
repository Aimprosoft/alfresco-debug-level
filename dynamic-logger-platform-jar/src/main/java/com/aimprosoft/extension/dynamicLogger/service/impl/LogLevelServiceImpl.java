package com.aimprosoft.extension.dynamicLogger.service.impl;

import com.aimprosoft.extension.dynamicLogger.service.LogLevelService;
import org.alfresco.repo.jscript.BaseScopableProcessorExtension;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

/**
 * Log level service
 * Sets selected log level for logger
 */
public class LogLevelServiceImpl extends BaseScopableProcessorExtension implements LogLevelService {
    /**
     * Set the logging level for the selected logger
     * @param logName - logger name to change log level for
     * @param lvl - new log level
     */
    @Override
    public void setLogLevel(String logName, String lvl) {
        // get logger by name
        Logger log = LogManager.getLogger(logName);
        // convert string to correct class instance
        Level level = Level.toLevel(lvl);
        // set level
        log.setLevel(level);
    }
}
