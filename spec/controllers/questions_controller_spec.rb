require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  describe "GET #question_create" do
    it "returns http success" do
      get :question_create
      expect(response).to have_http_status(:success)
    end
  end

end
