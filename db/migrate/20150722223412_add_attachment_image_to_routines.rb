class AddAttachmentImageToRoutines < ActiveRecord::Migration
  def self.up
    change_table :routines do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :routines, :image
  end
end
