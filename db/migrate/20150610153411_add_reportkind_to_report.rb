class AddReportkindToReport < ActiveRecord::Migration
  def change
  	add_column :reports, :Report_type, :string
  end
end
