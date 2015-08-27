require 'spec_helper'
require 'rails_helper'

describe ChoresController, type: :controller do
  
  let(:chore) { create(:chore) }
  let(:user) { create(:user) }
  let(:attrs) { chore.attributes }

  describe "#create" do
  	it "changes count when a new chore is created" do
  	  expect { post :create, chore: attrs}.to change(Chore, :count).by(1)
  	end
  end

  describe "#updated" do
  	it "is successful" do
      attrs = { title: "new", allday: "true"}
  	  put :update, id: "", chore: attrs
      expect(assigns(:chore)).to eq :chore
  	end
  end

  describe "#destroy" do

    before do
      post :create, chore: attrs
      delete :destroy, id: ""
    end

    it "deletes a chore" do
      expect(:chore).to be_nil
    end
  end
end