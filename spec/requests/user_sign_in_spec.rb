require "spec_helper"

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "alindeman@example.com",
                       :password => "ilovegrapes")

    visit "/users/sign_in"

    fill_in "user_email",    :with => "alindeman@example.com"
    fill_in "user_password", :with => "ilovegrapes"

    click_button "Sign in"

    expect(page).to have_content("A Chore Tracking Application")
  end
end
