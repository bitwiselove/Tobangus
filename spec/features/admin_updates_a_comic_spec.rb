require 'rails_helper'

feature 'Admin updates a comic' do
  scenario 'Successfully' do
    admin = create(:admin)
    comic = build(:budsuckers)
    create_comic(comic: comic, admin: admin)

    visit admin_root_path(as: admin)
    click_link comic.title

    fill_in 'Title', with: 'New title'
    fill_in 'Series', with: 'New series'
    fill_in 'Description', with: 'New description'
    attach_file 'Preview', "#{Rails.root}/spec/features/files/test_strip.png"
    click_button 'Update Comic'

    expect(page).to have_selector("input[value='New series']")
    expect(page).to have_selector("input[value='New title']")
    expect(page).to have_selector('textarea', text: 'New description')
    expect(page).to have_selector('img')
  end
end
