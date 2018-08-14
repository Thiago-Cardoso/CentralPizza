require 'rails_helper'

RSpec.describe "OrderReports", type: :request do
  describe "GET /order_reports" do
    it "works! (now write some real specs)" do
      get order_reports_path
      expect(response).to have_http_status(200)
    end
  end
end
