require "spec_helper"

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "a@l.com",
                       :password => "12345678")

    visit "/users/sign_in"

    fill_in "user_email",    :with => "a@l.com"
    fill_in "user_password", :with => "12345678"

    click_button "Sign in"
    visit "/chores/new"
    expect(page).to have_content("Title")
    
    fill_in "chore_title", :with => "Vaccum the Duck"
    fill_in "chore_url", :with => "url"
    fill_in "chore_allday", :with => "true"
  
    click_button "Create Chore"
    expect(page).to have_content("Vaccum the Duck")
  end
end
