class AddAttachmentAvatarToReports < ActiveRecord::Migration
  def self.up
    change_table :reports do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :reports, :avatar
  end
end
