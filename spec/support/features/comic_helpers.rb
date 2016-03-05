module Features
  module ComicHelpers
    def create_comic(args)
      admin = args.fetch(:admin)
      comic = args.fetch(:comic)

      visit admin_root_path(as: admin)

      click_link 'New Comic'
      fill_in 'Series', with: comic.series
      fill_in 'Title', with: comic.title
      fill_in 'Description', with: comic.description
      attach_file 'Preview', "#{Rails.root}/spec/features/files/test_strip.png"
      click_button 'Create Comic'
    end
  end
end

RSpec.configure do |config|
  config.include Features::ComicHelpers, type: :feature
end
