

fantadea.Idea = function()
{
	var that = this;
	
	this.init = function()
	{
		fantadea.validation.validate("#idea_name", "if(VAL != '') return true; else return false;", "Your idea needs a name.");
	}
};


(function() {
	var idea = new fantadea.Idea();
	$(document).ready(idea.init);		
})();


