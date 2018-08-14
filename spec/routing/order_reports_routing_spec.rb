require "rails_helper"

RSpec.describe OrderReportsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_reports").to route_to("order_reports#index")
    end

    it "routes to #new" do
      expect(:get => "/order_reports/new").to route_to("order_reports#new")
    end

    it "routes to #show" do
      expect(:get => "/order_reports/1").to route_to("order_reports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_reports/1/edit").to route_to("order_reports#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/order_reports").to route_to("order_reports#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_reports/1").to route_to("order_reports#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_reports/1").to route_to("order_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_reports/1").to route_to("order_reports#destroy", :id => "1")
    end

  end
end
