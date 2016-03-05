require 'rails_helper'

feature 'Admin creates a comic' do
  scenario 'Without being logged in' do
    comic = create(:budsuckers)
    visit edit_admin_comic_path(comic)
    expect(page).to have_content('Please sign in to continue.')
  end

  scenario 'Successfully' do
    admin = create(:admin)
    comic = build(:budsuckers)

    create_comic(comic: comic, admin: admin)

    expect(page).to have_selector("input[value='#{comic.series}']")
    expect(page).to have_selector("input[value='#{comic.title}']")
    expect(page).to have_selector('textarea', text: comic.description)
    expect(page).to have_selector('img')
  end
end
