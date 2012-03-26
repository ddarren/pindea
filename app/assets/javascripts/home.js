


fantadea.Home = function(validation)
{
	var that = {};
	function initialize()
	{
		validation.validate("#idea_name", "if(VAL != '') return true; else return false;", "Your idea needs a name.", false);
		validation.validate("#idea_description", "if(VAL != '') return true; else return false;", "Your idea needs a description.", false);
		$('textarea[maxlength]').limitMaxlength();
		$("#new_site_suggestion").submit(onSiteSuggestionSubmission);
		$("#idea-examples-link").popover({ placement: 'bottom', trigger: 'hover'});
	};
	
	function onSiteSuggestionSubmission()
	{
		$('#site_suggestion_text').val("");
	 	$('#site_suggestion_text').attr("placeholder", "Thanks for the feedback!");
	}

	that.initialize = initialize;
	return that;
};

fantadea.initializeHome = function()
{
	var home = new fantadea.Home(fantadea.validation);
	home.initialize();
};



