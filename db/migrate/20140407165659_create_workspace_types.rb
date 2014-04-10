class CreateWorkspaceTypes < ActiveRecord::Migration
  def change
    create_table :workspace_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
