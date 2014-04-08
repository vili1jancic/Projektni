class AddAttachmentPhotoToGlasses < ActiveRecord::Migration
  def self.up
    change_table :glasses do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :glasses, :photo
  end
end
