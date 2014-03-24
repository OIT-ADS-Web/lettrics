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
    fill_in 'textarea', with: "12345"
    expect(page).to have_content("#{4000 - 5}")
  end

  it "allows limit to be customized", js: true do
    visit '/small_text_area'
    expect(page).to have_content('10')
    fill_in 'textarea', with: "12345"
    expect(page).to have_content("You may enter #{10 - 5}")
  end

  it "updates the page on load if text already in box", js: true do
    visit '/text_area_with_text'
    expect(page).to have_content("#{4000 - 10}")
  end

  it "can handle two different textboxes on one page", js: true do
    visit '/text_areas'
    fill_in 'first', with: '12345'
    expect(page).to have_content('1000')
    fill_in 'second', with: '123'
    expect(page).to have_content('3995')
  end

  it "adds or removes error class when crossing limit", js: true do
    visit '/small_text_area'
    fill_in 'textarea', with: '0123456789!'
    expect(page).to have_css('#counter1.text-error')

    fill_in 'textarea', with: '0123456789'
    expect(page).not_to have_css('#counter1.text-error')
  end
end
