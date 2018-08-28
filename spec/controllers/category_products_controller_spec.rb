require 'rails_helper'

RSpec.describe CategoryProductsController, type: :controller do
  include Devise::Test::ControllerHelpers #include test for devise with helper of devise
before(:each) do
  #request.env["HTTP_ACCEPT"] = 'application/json'
  #Design patterns
  @request.env["devise.mapping"] = Devise.mappings[:user] #mapping devise
  @user = FactoryBot.create(:user)
  @categoryproduct = FactoryBot.create(:category_product)

  end
  # is permited access devise index not authenticated
  describe "as a Guest" do
    context "#index" do
    it "responds successfully" do
      get :index
      expect(response).to be_success
    end

      it "responds a 200 response" do
        get :index
        expect(response).to have_http_status(200)
      end
    end

    it "responds a 302 response (not authorized) " do
      get :show, params: {id: @categoryproduct.id}
      expect(response).to have_http_status(302)
    end 
 end

  describe "as Logged user" do
    it "#show" do 
      #it is necessary authenticated in devise
      sign_in @user   
      get :show, params: {id: @categoryproduct.id}
      expect(response).to have_http_status(200)
    end
  end
end

