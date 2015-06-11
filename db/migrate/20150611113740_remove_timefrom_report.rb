class RemoveTimefromReport < ActiveRecord::Migration
  def change
  	  	remove_column :reports, :time, :datetime
  end
end
