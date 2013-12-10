class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :post
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
