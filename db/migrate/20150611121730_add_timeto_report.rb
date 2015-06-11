class AddTimetoReport < ActiveRecord::Migration
  def change
  	add_column :reports, :time, :string
  end
end
