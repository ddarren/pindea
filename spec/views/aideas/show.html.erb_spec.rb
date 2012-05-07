require 'spec_helper'

describe "aideas/show" do
  before(:each) do
    @aidea = assign(:aidea, stub_model(Aidea))
  end

  it "renders attributes in <p>" do
    render
  end
end
