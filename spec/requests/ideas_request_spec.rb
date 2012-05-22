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
      fill_in "good-point-textbox", :with => "gpabc"
      find("#new_good_point").find("input[type=submit]").click
      visit idea_path @idea # this line should not be needed
      find("#good_points").should have_content "gpabc"
      pending "need to correct this test"
    end
  
  end
  

end