class CreateStrips < ActiveRecord::Migration
  def change
    create_table :strips do |t|

      t.timestamps null: false
    end
  end
end
