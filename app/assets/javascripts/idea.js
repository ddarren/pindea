

fantadea.Idea = function()
{
	var that = this;
	
	this.init = function()
	{
		$("#idea_name").validate({
						expression: "if(VAL != '') return true; else return false;",
						message: "Your idea needs a name."
						});
	}
};


(function() {
	var idea = new fantadea.Idea();
	$(document).ready(idea.init);		
})();


