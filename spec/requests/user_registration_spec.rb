require "spec_helper"

describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "/users/sign_up"

    fill_in "user_email",                 :with => "alindeman@example.com"
    fill_in "user_password",              :with => "ilovegrapes"
    fill_in "user_password_confirmation", :with => "ilovegrapes"

    click_button "Sign up"

    expect(page).to have_content("A Chore Tracking Application")
  end
end
