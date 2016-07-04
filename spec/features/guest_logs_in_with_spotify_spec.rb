require "rails_helper"

RSpec.feature "Guest logs in with Spotfy" do
  scenario "they see their Spotify info and playlists" do
    visit root_path

      within("#navbar") do
        expect(page).to have_content("Login with Spotify")
        expect(page).to have_content("Spotify Migrator")
        expect(page).to_not have_content("mock_user")
        expect(page).to_not have_content("Logout")
      end

      stub_omniauth
      click_on "Login with Spotify"

      within("#navbar") do
        expect(page).to have_content("mock_user")
        expect(page).to have_content("Spotify Migrator")
        expect(page).to have_content("Logout")
        expect(page).to_not have_content("Login with Spotify")
      end
  end
end
