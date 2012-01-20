fantadea.test.idea || ( fantadea.test.idea = {} );
fantadea.test.idea.IdeaTest = TestCase("IdeaTest");

(function(){
	
	var that = this;
	
	ValidationMock = function()
	{
		
		var that = this;		
		this.selectors = new Array();
		
		this.validate = function(selector, expression, message)
		{
			that.selectors.push(selector);
			that.expression = expression;
			that.message = message;
		};
	};


	fantadea.test.idea.IdeaTest.prototype.setUp = function()
	{
		that.validationMock = new ValidationMock();
		that.idea = new fantadea.Idea(that.validationMock);		
	};
	
	fantadea.test.idea.IdeaTest.prototype.testNameValidation = function() {			
		
		that.idea.initialize();
		assertTrue("Validation was not called for the idea name.", that.validationMock.selectors.indexOf("#idea_name") > -1)

	};
	
	fantadea.test.idea.IdeaTest.prototype.testDescriptionValidation = function() {			
		
		that.idea.initialize();
		assertTrue("Validation was not called for the idea description.", that.validationMock.selectors.indexOf("#idea_description") > -1)

	};
})();