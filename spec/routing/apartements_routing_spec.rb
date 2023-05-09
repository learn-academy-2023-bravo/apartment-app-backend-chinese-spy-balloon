require "rails_helper"

RSpec.describe ApartementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/apartements").to route_to("apartements#index")
    end

    it "routes to #new" do
      expect(get: "/apartements/new").to route_to("apartements#new")
    end

    it "routes to #show" do
      expect(get: "/apartements/1").to route_to("apartements#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/apartements/1/edit").to route_to("apartements#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/apartements").to route_to("apartements#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/apartements/1").to route_to("apartements#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/apartements/1").to route_to("apartements#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/apartements/1").to route_to("apartements#destroy", id: "1")
    end
  end
end
