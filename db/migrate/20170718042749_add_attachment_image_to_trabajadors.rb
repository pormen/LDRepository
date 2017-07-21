class AddAttachmentImageToTrabajadors < ActiveRecord::Migration
  def self.up
    change_table :trabajadors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :trabajadors, :image
  end
end
