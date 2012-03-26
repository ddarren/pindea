

fantadea.Idea = function(validation)
{
	var that = {};
	function initialize()
	{
		$(".alert").alert();

		requireTextInPointTextboxes();
		enablePointAppending();
		enableAjaxPaging();
		new fantadea.Facebook().parseXFBML();

	};
	
	function enablePointAppending()
	{
		$('form[id$=point]').submit(function() {
			var pointName = $(this).next("div[id*='points']:first").attr("id").split('_')[0];		
			var pointText = $(this).find("input[type=text]").val();		
			$(this).next("div[id='" + pointName +"_points']").prepend("<div class='" + pointName + "-container'>" + pointText + "</div>");				
		});
		
		$("form[id$=point]").live("ajax:beforeSend", function(){
		  $(this).find("input[type=text]").val("").attr("placeholder", "Add another thought here...");
		});
	}
	
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

