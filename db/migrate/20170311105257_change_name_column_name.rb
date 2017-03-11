class ChangeNameColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :ingredients, :name, :description
  end
end
