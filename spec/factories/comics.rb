# == Schema Information
#
# Table name: comics
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :budsuckers, class: Comic do |comic|
    title "Budsuckers III"
    description "Indica and Sativa Budsucker, two vampire children that love to
    party, fool around in the future with sci-fi smoke, alien undead, and 
    sedated scientists."

    after(:create) do |budsuckas|
      create(:strip, comic: budsuckas)
    end
  end
end
