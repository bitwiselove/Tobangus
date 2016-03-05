class AddAttachmentPreviewToComics < ActiveRecord::Migration
  def self.up
    change_table :comics do |t|
      t.attachment :preview
    end
  end

  def self.down
    remove_attachment :comics, :preview
  end
end
