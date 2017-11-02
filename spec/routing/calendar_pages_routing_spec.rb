require "rails_helper"

RSpec.describe CalendarPagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/calendar_pages").to route_to("calendar_pages#index")
    end

    it "routes to #new" do
      expect(:get => "/calendar_pages/new").to route_to("calendar_pages#new")
    end

    it "routes to #show" do
      expect(:get => "/calendar_pages/1").to route_to("calendar_pages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/calendar_pages/1/edit").to route_to("calendar_pages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/calendar_pages").to route_to("calendar_pages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/calendar_pages/1").to route_to("calendar_pages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/calendar_pages/1").to route_to("calendar_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/calendar_pages/1").to route_to("calendar_pages#destroy", :id => "1")
    end

  end
end
