require 'rails_helper'

feature "On a logged in user landing page" do
  it "a user can view basic information about account like picture, number of starred repos, and followers" do
    visit root_path
    mock_auth_hash
    click_on("Login")
    expect(page).to have_content("followers")
  end
end






it "and view a summary of recent commits" do
end

it  "and view a summary of revent activity from users I follow" do
end

it "and view a list of organizations I am a member of" do
end

it "and see a list of my repos" do
end
