require 'spec_helper'

describe "lettrics integration" do
  it "makes lettrics.js available in asset pipeline" do
    visit '/assets/lettrics.js'
    expect(page).to have_content('updateCharacterCountdown')
  end

  it "displays the character limit above empty text box" do
    visit '/text_area'
    expect(page).to have_content('4000')
  end

  it "counts down as user types", js: true do
    visit '/text_area'
    fill_in 'with-lettrics', with: "12345"
    expect(page).to have_content("#{4000 - 5}")
  end

  it "allows limit to be customized"
  it "does not update non-designated text boxes"
  it "can handle two different textboxes on one page"
end
