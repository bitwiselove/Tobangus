# == Schema Information
#
# Table name: comics
#
#  id                   :integer          not null, primary key
#  title                :string
#  description          :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  series               :string
#  status               :integer          default(0)
#  preview_file_name    :string
#  preview_content_type :string
#  preview_file_size    :integer
#  preview_updated_at   :datetime
#

FactoryGirl.define do
  factory :budsuckers, class: Comic do |comic|
    series "The Budsuckers"
    title "Budsuckers III"
    description "Indica and Sativa Budsucker, two vampire children that love to party, fool around in the future with sci-fi smoke, alien undead, and sedated scientists."

    preview_file_name 'test_strip.png'
    preview_content_type 'image/png'
    preview_file_size 1024

    status 1

    after(:create) do |budsuckas|
      create(:strip, comic: budsuckas)
    end
  end
end
