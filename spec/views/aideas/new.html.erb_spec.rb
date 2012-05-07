require 'spec_helper'

describe "aideas/new" do
  before(:each) do
    assign(:aidea, stub_model(Aidea).as_new_record)
  end

  it "renders new aidea form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => aideas_path, :method => "post" do
    end
  end
end
