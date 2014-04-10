class CreateWorkspaces < ActiveRecord::Migration
  def change
    create_table :workspaces do |t|
      t.integer :venue_id
      t.string :name
      t.text :description
      t.integer :workspace_type_id
      t.integer :max_capacity
      t.integer :amenity_id
      t.boolean :multiple_workspace
      t.boolean :charged_by_person_count
      t.string  :main_photo
      t.integer :workspace_status_id

      t.timestamps
    end
  end
end
