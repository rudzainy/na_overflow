require 'rails_helper'

RSpec.describe AnswersController, type: :controller do

  describe "GET #answer_create" do
    it "returns http success" do
      get :answer_create
      expect(response).to have_http_status(:success)
    end
  end

end
