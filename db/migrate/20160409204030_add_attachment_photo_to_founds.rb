class AddAttachmentPhotoToFounds < ActiveRecord::Migration
  def self.up
    change_table :founds do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :founds, :photo
  end
end
