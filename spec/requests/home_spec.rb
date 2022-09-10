require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /greeting" do
    it "returns http success" do
      get "/home/greeting"
      expect(response).to have_http_status(:success)
    end
  end

end
