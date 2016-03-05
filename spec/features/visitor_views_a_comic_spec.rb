require 'rails_helper'

feature 'Visitor views a comic' do
  scenario 'Viewing a featured comic' do
    comic = create(:budsuckers)

    visit root_path
    find('.comic-preview').click

    expect(page).to have_content(comic.title)
  end

  scenario 'Viewing a comic directly' do
    comic = create(:budsuckers)

    visit comic_path(comic)

    expect(page).to have_content(comic.title)
    expect(page).to have_content(comic.description)
    expect(page).to have_selector('img')
  end
end
