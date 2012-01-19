(function() {

	$(document).ready(function(){
		
		
		
		$("#idea_name").validate({
			expression: "if(VAL != '') return true; else return false;",
			message: "Your idea needs a name."
		});
	});
})();