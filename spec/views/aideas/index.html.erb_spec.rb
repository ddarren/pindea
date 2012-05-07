require 'spec_helper'

describe "aideas/index" do
  before(:each) do
    assign(:aideas, [
      stub_model(Aidea),
      stub_model(Aidea)
    ])
  end

  it "renders a list of aideas" do
    render
  end
end
