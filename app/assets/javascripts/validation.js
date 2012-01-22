// Uses jquery.validation.js which is from http://www.geektantra.com/2009/09/jquery-live-form-validation/

(function() {
	fantadea.validation.validate = function(selector, expression, message, isRealTime) {
		
		$(selector.toString()).validate({
						expression: expression,
						message: message,
						error_message_class: "help-inline",
						error_container_class: "validation-container",
						live: isRealTime
						});
	};
	
})();