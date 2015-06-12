class AddReportToUser < ActiveRecord::Migration
  def change
  	add_foreign_key :reports, :users
  end
end
