require "rails_helper"
require "spec_helper"

describe UserMailer, :type => :mailer do
  let(:user) { create(:user) }

  describe "#welcome_email" do
    let(:mail) { UserMailer.welcome_email(user) }

    it "renders the correct headers" do
      expect(mail.from).to include "choresapplication@gmail.com"
      expect(mail.to).to include user.email
      expect(mail.subject).to include "You've signed up do Chores!"
    end

    it "renders an html layout" do
      expect(mail.body).to include "You have successfully"
    end
  end
end