require 'rails_helper'

RSpec.describe 'Welcome', type: :request do
  it "renders index template" do
    get '/'
    expect(response.body).to include('Hello, Rails')
  end
end
