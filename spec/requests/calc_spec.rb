require 'rails_helper'

RSpec.describe "Calcs", type: :request do
  describe "GET /" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/calc/show"
      expect(response).to have_http_status(:success)
    end
  end

end
