class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :event_id, :index => true
      t.string :name

      t.timestamps
    end
  end
end
