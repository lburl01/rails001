require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "homepage: GET /" do

    before(:each) do
      get '/' 
    end

    it "responds with a 200 status code" do
      expect(last_response).to be_ok
    end

    it "renders the homepage view, 'index.erb'" do
      expect(last_response.body).to include("Welcome to Thingy")
    end
  end

end
