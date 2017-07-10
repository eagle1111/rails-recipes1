class AddSectionIdToRegistration < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :section_id, :integer
    add_index :registrations, :section_id, :unique => true
  end
end
