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
    
    it "should allow creation of a good point"  do
      should_allow_creation_of_point "good"
    end
    
    it "should allow creation of a bad point"  do
      should_allow_creation_of_point "bad"
    end
    
    it "should allow creation of a consideration point"  do
      should_allow_creation_of_point "consideration"
    end
    
    def should_allow_creation_of_point point_prefix
      fill_in "#{point_prefix}-point-textbox", :with => "gpabc"
      find("#new_#{point_prefix}_point").find("input[type=submit]").click
      visit idea_path @idea # this line should not be needed
      find("##{point_prefix}_points").should have_content "gpabc"
      pending "need to correct this test"   
    end
  
  end
  

end