require 'spec_helper'
require 'rails_helper'

describe ChoresController, type: :controller do
  
  let(:chore) { create(:chore) }
  let(:attrs) { chore.attributes }

  describe "#create" do

	  it "changes count when a new chore is created" do
      expect { post :create, chore: attrs }.to change(Chore, :count).by(1)
	  end
  end

  describe "#updated" do

 	  it "is successful" do
      put :update, id: chore, chore: attrs
      assigns(attrs).should eq(attrs)
 	  end
  end

  describe "#destroy" do

    before do
      post :create, chore: attrs
    end

    it "deletes a chore" do
      expect{ delete :destroy, id: chore }.to change(Chore, :count).by(-1)
    end
  end
end