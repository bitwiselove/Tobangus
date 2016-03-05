require 'rails_helper'

feature 'Visitor views a comic' do
  scenario 'Viewing a comic' do
    comic = create(:budsuckers)

    visit comic_path(comic)

    expect(page).to have_content(comic.title)
    expect(page).to have_content(comic.description)
    expect(page).to have_selector('img')
  end
end
