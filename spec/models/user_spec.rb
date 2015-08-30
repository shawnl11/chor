require 'rails_helper'
require 'spec_helper'


describe User do

  describe "#create" do
  	it "should be valid" do
  	  FactoryGirl.create(:user).should be_valid
  	end

    it "sends welcome email" do
      expect {
    	FactoryGirl.create(:user)
      }.to change(ActionMailer::Base.deliveries, :count).by(1)
    end
  end
end