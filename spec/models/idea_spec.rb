require 'spec_helper'

describe Idea do
  it "should find idea by name" do
    idea = FactoryGirl.build :idea
    idea.name = "phone"
    idea.save
    
    Idea.search("phone")[0].name.should eq "phone"
    
  end
end
