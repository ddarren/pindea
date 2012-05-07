require 'spec_helper'

describe "aideas/edit" do
  before(:each) do
    @aidea = assign(:aidea, stub_model(Aidea))
  end

  it "renders the edit aidea form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => aideas_path(@aidea), :method => "post" do
    end
  end
end
