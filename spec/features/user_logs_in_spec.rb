require 'rails_helper'


describe "feature" do

  it "as a user I can authenticate with my github account" do
    visit root_path
    mock_auth_hash
    click_on("Login")
    expect(page).to have_content("Hello, Kali Borkoski")
    expect(current_path).to eq("/JunePaloma")

  end

end
