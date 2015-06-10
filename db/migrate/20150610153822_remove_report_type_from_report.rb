class RemoveReportTypeFromReport < ActiveRecord::Migration
  def change
  	remove_column :reports, :Report_type, :string
  end
end
