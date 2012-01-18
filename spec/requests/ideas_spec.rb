require 'spec_helper'

describe "New Idea" do
  it "creates an idea" do
    visit new_idea_path
    puts "testing"

    page.should have_content("Description")
    fill_in "name", :with => "test idea"
  end

end
