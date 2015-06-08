class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.string :type
      t.timestamp :time
      t.text :description

      t.timestamps null: false
    end
  end
end
