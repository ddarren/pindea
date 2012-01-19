fantadea.test.idea || ( fantadea.test.idea = {} );
fantadea.test.idea.IdeaTest = TestCase("IdeaTest");

(function(){
	fantadea.test.idea.IdeaTest.prototype.setUp = function()
	{
		this.idea = new fantadea.Idea();
	};
	
	fantadea.test.idea.IdeaTest.prototype.testInitalizingValidation = function() {
		console.log('testfasfasfd');
		this.idea.init();


	};
})();