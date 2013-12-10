class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.text :aboutus
      t.date :schedule

      t.timestamps
    end
  end
end
