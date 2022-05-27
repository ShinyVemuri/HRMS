require 'rails_helper'

RSpec.describe "ProjectManagements", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/project_managements/index"
      expect(response).to have_http_status(:success)
    end
  end

end
