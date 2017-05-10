# **Alfresco Debug Level Extension**

Simple Alfresco extension to change debug level of any alfresco class in runtime. Adds additional option under Admin Tools screen with ability to enter debug level (or change existing).

# **How to build and install**

- Build 2 modules using maven:
   * {project_dir}/dynamic-logger-platform-jar mvn clean package
   * {project_dir}/dynamic-logger-share-jar mvn clean package
- Copy files:
   *  {project_dir}/dynamic-logger-platform-jar/target/dynamic-logger-platform-jar-0.1.jar to {alfresco_install_dir}/tomcat/alfresco/WEB-INF/lib
   *  {project_dir}/dynamic-logger-share-jar/target/dynamic-logger-share-jar-0.1.jar to {alfresco_install_dir}/tomcat/share/WEB-INF/lib
- Restart alfresco in standard way