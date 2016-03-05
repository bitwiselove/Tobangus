require 'rails_helper'

feature 'Admin creates a comic' do
  scenario 'Without being logged in' do
    visit admin_root_path
    expect(page).to have_content('Please sign in to continue.')
  end

  scenario 'Successfully' do
    admin = create(:admin)
    comic = build(:budsuckers)

    visit admin_root_path(as: admin)

    click_link 'New Comic'
    fill_in 'Series', with: comic.series
    fill_in 'Title', with: comic.title
    fill_in 'Description', with: comic.description
    attach_file 'Preview', "#{Rails.root}/spec/features/files/test_strip.png"
    click_button 'Create Comic'

    expect(page).to have_selector("input[value='#{comic.series}']")
    expect(page).to have_selector("input[value='#{comic.title}']")
    expect(page).to have_selector('textarea', text: comic.description)
    expect(page).to have_selector('img')
  end
end
