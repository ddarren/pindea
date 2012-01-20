

fantadea.Idea = function(validation)
{
	this.initialize = function()
	{
		validation.validate("#idea_name", "if(VAL != '') return true; else return false;", "Your idea needs a name.");
		validation.validate("#idea_description", "if(VAL != '') return true; else return false;", "Your idea needs a description.");
	};
};


(function() {
	var idea = new fantadea.Idea(fantadea.validation);
	$(document).ready(idea.initialize);		
})();


