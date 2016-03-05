class ChangeComicsSeriesFromTextToString < ActiveRecord::Migration
  def change
    change_column :comics, :series, :string
  end
end
