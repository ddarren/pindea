

fantadea.Idea = function(validation)
{
	var that = {};
	function initialize()
	{
		$(".alert").alert();
		requireTextInPointTextboxes();
		enableAjaxPaging();
		new fantadea.Facebook().parseXFBML();

	};
	
	function requireTextInPointTextboxes()
	{
		$('form[id$=point]').submit(function() {
		  if($(this).find('input[type=text]').val() == '')
		  	return false;
		});	
	}
	
	function enableAjaxPaging()
	{
	  $("#ideas th a, #ideas .pagination a").live("click", function() {
	    $.getScript(this.href);
	    return false;
	  });
	}
		
	that.initialize = initialize;
	return that;
};

fantadea.initializeIdea = function()
{
	var idea = new fantadea.Idea(fantadea.validation);
	idea.initialize();
};

