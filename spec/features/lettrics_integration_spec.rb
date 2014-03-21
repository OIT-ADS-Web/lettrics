require 'spec_helper'

describe "lettrics integration" do
  it "makes lettrics.js available in asset pipeline" do
    visit '/assets/lettrics.coffee'
    expect(page).to have_content('updateCharacterCountdown')
  end
end
