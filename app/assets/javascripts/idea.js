

fantadea.Idea = function(validation)
{
	var that = {};
	function initialize()
	{
		$(".alert").alert();

		
		enablePointAppending();
		enableAjaxPaging();
		enableTwitterButton();
		new fantadea.Facebook().parseXFBML();

	};
	
	function enablePointAppending()
	{
		$('form[id$=point]').submit(function() {
			var inputtedValue = $(this).find('input[type=text]').val();
			if($.trim(inputtedValue) == '')
		  		return false;
		
			var pointName = $(this).next("div[id*='points']:first").attr("id").split('_')[0];		
			var pointText = $(this).find("input[type=text]").val();		
			$(this).next("div[id='" + pointName +"_points']").prepend("<div class='" + pointName + "-container'>" + pointText + "</div>");				
		});
		
		$("form[id$=point]").live("ajax:beforeSend", function(){
		  $(this).find("input[type=text]").val("").attr("placeholder", "Add another thought here...");
		});
	}
	
	
	function enableAjaxPaging()
	{
	  $("#ideas th a, #ideas .pagination a").live("click", function() {
	    $.getScript(this.href);
	    return false;
	  });
	}
	
	function enableTwitterButton()
	{
	  !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];
	    // to override default Twitter script code and always create twitter button... this overcomes problems with have the site ajaxified
	    if(!d.getElementById(id) || true == true) 
	      {js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
	}
		
	that.initialize = initialize;
	return that;
};

fantadea.initializeIdea = function()
{
	var idea = new fantadea.Idea(fantadea.validation);
	idea.initialize();
};

