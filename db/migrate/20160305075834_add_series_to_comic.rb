class AddSeriesToComic < ActiveRecord::Migration
  def change
    add_column :comics, :series, :text
  end
end
