fantadea.test.idea || ( fantadea.test.idea = {} );
fantadea.test.idea.IdeaTest = TestCase("IdeaTest");




(function(){
	
	var that = this;
	
	ValidationMock = function()
	{
		var that = this;
		
		this.validate = function(selector, expression, message)
		{
			that.selector = selector;
			that.expression = expression;
			that.message = message;
		};
	};


	fantadea.test.idea.IdeaTest.prototype.setUp = function()
	{

		that.validationMock = new ValidationMock();
		that.idea = new fantadea.Idea(that.validationMock);
		
	};
	
	fantadea.test.idea.IdeaTest.prototype.testInitalizingValidation = function() {			
		
		that.idea.initialize();
		assertEquals("#idea_name", that.validationMock.selector)

	};
})();