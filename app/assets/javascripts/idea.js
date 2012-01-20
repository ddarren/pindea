

fantadea.Idea = function(validation)
{
	var that = this;

	this.initialize = function()
	{
		validation.validate("#idea_name", "if(VAL != '') return true; else return false;", "Your idea needs a name.");
	};
};


(function() {
	var idea = new fantadea.Idea(fantadea.validation);
	$(document).ready(idea.initialize);		
})();


