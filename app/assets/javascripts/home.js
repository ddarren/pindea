(function() {	


	fantadea.Home = function(validation)
	{
		var that = {};
		function initialize()
		{
			validation.validate("#idea_name", "if(VAL != '') return true; else return false;", "Your idea needs a name.", false);
			validation.validate("#idea_description", "if(VAL != '') return true; else return false;", "Your idea needs a description.", false);
		};
		
		that.initialize = initialize;
		return that;
	};

	fantadea.initializeHome = function()
	{
		var home = new fantadea.Home(fantadea.validation);
		home.initialize();
	};

	fantadea.initializeController = function(controllerName)
	{
		var initializeMethod = "initialize" + controllerName;
		if(fantadea[initializeMethod] == null)
			return;
		fantadea[initializeMethod]();
	};


})();