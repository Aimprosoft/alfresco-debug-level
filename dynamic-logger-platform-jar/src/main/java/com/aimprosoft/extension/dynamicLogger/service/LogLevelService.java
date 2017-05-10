package com.aimprosoft.extension.dynamicLogger.service;

/**
 * Log level service
 * Sets selected log level for logger
 */
public interface LogLevelService {

    /**
     * Set the logging level for the selected logger
     * @param logName - logger name to change log level for
     * @param lvl - new log level
     */
    void setLogLevel(String logName, String lvl);
}
