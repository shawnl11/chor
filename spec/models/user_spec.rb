require 'spec_helper'

describe User do
  let(:user) { create(:user) }

  describe "#create" do
    it "sends welcome email" do
      expect {
      	post :create, user: attributes
      }.to change(ActionMailer::Base.deliveries, :count).by(1)
    end
  end
end