require 'spec_helper'

describe "home page" do
  
  it "can create an idea" do
    visit root_path

    fill_in "idea_name", :with => "test idea"
    fill_in "idea_description", :with => "test idea descript. this is indeed a description"
    find("#new_idea").find_button("Add").click
  end

end
