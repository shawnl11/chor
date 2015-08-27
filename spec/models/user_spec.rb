require 'rails_helper'
require 'spec_helper'


describe User do
  let(:user) { create(:user) }
  let(:attributes) { attributes_for :user }

  describe "#create" do
    it "sends welcome email" do
      expect {
    	user.send(:send_welcome_email)
      }.to change(ActionMailer::Base.deliveries, :count).by(1)
    end
  end
end