

fantadea.Idea = function(validation)
{
	var that = {};
	function initialize()
	{
		requireTextInPointTextboxes();
	};
	
	function requireTextInPointTextboxes()
	{
		$('form[id$=point]').submit(function() {
		  if($(this).find('input[type=text]').val() == '')
		  	return false;
		});	
	}
	
	that.initialize = initialize;
	return that;
};


(function() {
	var idea = new fantadea.Idea(fantadea.validation);
	$(document).ready(idea.initialize);		
})();


