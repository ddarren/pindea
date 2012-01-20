(function() {
	fantadea.validation.validate = function(selector, expression, message) {
		
		$(selector.toString()).validate({
						expression: expression,
						message: message
						});
	};
	
})();