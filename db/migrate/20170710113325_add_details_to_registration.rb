class AddDetailsToRegistration < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :department_id, :integer
    add_index :registrations, :department_id, :unique => true
  end
end
