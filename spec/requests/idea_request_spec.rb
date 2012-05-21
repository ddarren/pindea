require 'spec_helper'

describe "show ideas" do
  
  describe "idea page" do
  
    before :each do
     @idea = FactoryGirl.create :idea
      visit idea_path @idea
    end
  
    it "should have the name of the idea" do
      page.should have_content @idea.name
    end  

    it "should have the description of the idea" do
      page.should have_content @idea.description
    end
  
  end
  

end