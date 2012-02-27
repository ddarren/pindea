
fantadea.Facebook = function()
{
	var that = {};
		
	
	function parseXFBML()
	{
		if(typeof FB != 'undefined')
			FB.XFBML.parse();
	}
	
	that.parseXFBML = parseXFBML;
	
	return that;
		
};

