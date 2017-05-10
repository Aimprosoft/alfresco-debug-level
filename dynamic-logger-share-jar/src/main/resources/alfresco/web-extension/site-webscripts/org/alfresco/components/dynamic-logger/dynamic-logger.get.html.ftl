<@markup id="css" >
<#-- CSS Dependencies -->
    <@link href="${url.context}/res/components/form/form.css" group="console"/>
</@>

<@markup id="js">
<#-- JavaScript Dependencies -->
    <@script src="${url.context}/res/components/console/consoletool.js" group="console"/>
    <@script type="text/javascript" src="${url.context}/res/components/dynamic-logger/dynamic-logger.js" group="console"/>
</@>
<@markup id="widgets">
    <@createWidgets group="console"/>
</@>


<@markup id="html">
    <#assign el=args.htmlid?html>
    <@uniqueIdDiv>
    <div class="share-form">
        <div class="form-manager">
            <h2>Change logger level</h2>
        </div>
        <div id="support-email" class="form-container">
            <div id="support-form-caption" class="caption">
                <span class="mandatory-indicator">*</span>
                Required Fields
            </div>
        <form id="${el}-form" action="${url.context}/proxy/alfresco/aimprosoft/extension/dynamic-logger">
            <div id="${el}-form-fields" class="form-fields">
                <div class="form-field">
                    <label for="loggerName">Logger Name:<span class="mandatory-indicator">*</span></label>
                    <input type="text" name="loggerName" id="loggerName" title="field for full logger name"/>
                </div>
                <div class="form-field">
                    <label for="loggerLevel">Logger Level:<span class="mandatory-indicator">*</span></label>
                    <select id="loggerLevel" title="Logger level selector">
                        <option value="off">OFF</option>
                        <option value="error">ERROR</option>
                        <option value="warn">WARN</option>
                        <option value="info">INFO</option>
                        <option value="debug">DEBUG</option>
                        <option value="trace">TRACE</option>
                        <option value="all">ALL</option>
                    </select>
                </div>
            </div>
            <div id="${el}-form-buttons" class="form-buttons">
                <span class="yui-button yui-submit-button" id="${el}-submit">
                    <span class="first-child">
                        <button type="button" tabindex="18" id="${el}-submit-button">Submit</button>
                    </span>
                </span>
            </div>
        </form>
    </div>
    </div>
    </@>
</@>