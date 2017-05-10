(function () {

    var Dom = YAHOO.util.Dom,
        Event = YAHOO.util.Event;

    Alfresco.DynamicLogger = function (htmlId) {
        this.name = "Alfresco.DynamicLogger";
        Alfresco.DynamicLogger.superclass.constructor.call(this, this.name ,htmlId, ["button"]);
        return this;
    };


    YAHOO.extend(Alfresco.DynamicLogger, Alfresco.component.Base,
        {
            options: {
                loggerName:null,
                loggerLevel:null
            },

            /**
             * Fired by YUI when parent element is available for scripting.
             *
             * @method onReady
             */
            onReady: function ConsoleCategoryManager_onReady() {
                this.widgets.ok = Alfresco.util.createYUIButton(this, "submit", null,
                    {
                        type: "submit"
                    });
                var form = new Alfresco.forms.Form(this.id + "-form");
                form.setSubmitAsJSON(true);
                form.setAJAXSubmit(true,
                    {
                        successCallback: {
                            fn: function successHandler(response) {
                                Alfresco.util.PopupManager.displayMessage(
                                    {
                                        text:response.json.result
                                    });
                            },
                            scope: this
                        },
                        failureCallback: {
                            fn: function failureHandler(response) {
                                Alfresco.util.PopupManager.displayMessage(
                                    {
                                        text:response.json.result
                                    });
                            },
                            scope: this
                        }
                    });
                form.addValidation("loggerName", Alfresco.forms.validation.mandatory, null, "keyup");
                form.init();
                Dom.setStyle(this.id + "-body", "display", "block");
            }
        });

})
();