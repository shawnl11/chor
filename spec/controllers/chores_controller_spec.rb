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
  	  post :update, chore: attrs
  	  expect(response).to be_success
  	end
  end
end