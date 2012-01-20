fantadea.test.idea || ( fantadea.test.idea = {} );
fantadea.test.idea.IdeaTest = TestCase("IdeaTest");




(function(){
	
	
	ValidationMock = function()
	{
		this.validate = function(selector, expression, message)
		{
			this.selector = selector;
			this.expression = expression;
			this.message = message;
		};
	};


	fantadea.test.idea.IdeaTest.prototype.setUp = function()
	{

		this.validationMock = new ValidationMock();
		this.idea = new fantadea.Idea(this.validationMock);
		
	};
	
	fantadea.test.idea.IdeaTest.prototype.testInitalizingValidation = function() {
			
		
		this.idea.initialize();
		assertEquals("#idea_name", this.validationMock.selector)


	};
})();