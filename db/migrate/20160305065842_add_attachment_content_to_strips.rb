class AddAttachmentContentToStrips < ActiveRecord::Migration
  def self.up
    change_table :strips do |t|
      t.attachment :content
    end
  end

  def self.down
    remove_attachment :strips, :content
  end
end
