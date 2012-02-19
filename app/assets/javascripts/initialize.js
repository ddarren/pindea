fantadea.initializeController = function(controllerName)
{
	var initializeMethod = "initialize" + controllerName;
	if(fantadea[initializeMethod] == null)
		return;
	fantadea[initializeMethod]();
};


