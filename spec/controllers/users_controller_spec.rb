require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #user_profile" do
    it "returns http success" do
      get :user_profile
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #user_edit" do
    it "returns http success" do
      get :user_edit
      expect(response).to have_http_status(:success)
    end
  end

end
