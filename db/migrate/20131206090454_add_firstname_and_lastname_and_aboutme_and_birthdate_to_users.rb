class AddFirstnameAndLastnameAndAboutmeAndBirthdateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :aboutme, :text
    add_column :users, :birthdate, :date
  end
end
