require 'spec_helper'

describe "home page" do
  
  before :each do
        visit root_path
  end
  
  it "can create an idea" do
    add_idea
    
    Idea.where("name = 'test idea'").should_not be nil
  end
  
  it "redirects to new idea" do
    add_idea
    should_be_on_idea_page
  end
  
  it "can add suggestion" do
    fill_in "site_suggestion_text", :with => "asdfq"
    find("#new_site_suggestion").find("input[type=submit]").click
  end
  
  it "remains on home screen after adding site suggestion" do
    fill_in "site_suggestion_text", :with => "asdfq"
    
    page.should have_selector("#new_site_suggestion")
  end
  
  it "should show latest ideas" do
    idea = FactoryGirl.create :idea
    visit root_path
    page.should have_content(idea.name)
  end
  
  it "latest ideas to redirect to the idea" do
    idea = FactoryGirl.create :idea
    visit root_path
    click_on idea.name
    should_be_on_idea_page
  end
  
  it "should show new idea help text on idea page when adding an idea" do
    add_idea
    page.should have_selector "#idea-alert"
  end
  
  def add_idea
    fill_in "idea_name", :with => "test idea"
    fill_in "idea_description", :with => "test idea descript. this is indeed a description"
    find("#new_idea").find_button("Add").click
  end
  
  def should_be_on_idea_page
    page.should have_selector "#point_name"
  end
  
  
 
end
