class ChangeNameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :ingredients, :description, :name
  end
end
