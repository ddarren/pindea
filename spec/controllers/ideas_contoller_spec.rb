require 'spec_helper'

describe IdeasController do

it 'creates a new idea' do
  get :new
  response.should render_template('new')
end

end
