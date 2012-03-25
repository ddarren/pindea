


fantadea.Home = function(validation)
{
	var that = {};
	function initialize()
	{
		validation.validate("#idea_name", "if(VAL != '') return true; else return false;", "Your idea needs a name.", false);
		validation.validate("#idea_description", "if(VAL != '') return true; else return false;", "Your idea needs a description.", false);
		enableMaxLengthOnTextAreas();
		$("#new_site_suggestion").submit(onSiteSuggestionSubmission);
		$("#idea-examples-link").popover({ placement: 'bottom', trigger: 'hover'});
	};
	
	function onSiteSuggestionSubmission()
	{
		$('#site_suggestion_text').val("");
	 	$('#site_suggestion_text').attr("placeholder", "Thanks for the feedback!");
	}
	
	function enableMaxLengthOnTextAreas()
	{
		$('textarea[maxlength]').keyup(function(){  
	        //get the limit from maxlength attribute  
	        var limit = parseInt($(this).attr('maxlength'));  
	        //get the current text inside the textarea  
	        var text = $(this).val();  
	        //count the number of characters in the text  
	        var chars = text.length;  

	        //check if there are more characters then allowed  
	        if(chars > limit){  
	            //and if there are use substr to get the text before the limit  
	            var new_text = text.substr(0, limit);  

	            //and change the current text with the new text  
	            $(this).val(new_text);  
	        }  
	    });
	}
	
	that.initialize = initialize;
	return that;
};

fantadea.initializeHome = function()
{
	var home = new fantadea.Home(fantadea.validation);
	home.initialize();
};



