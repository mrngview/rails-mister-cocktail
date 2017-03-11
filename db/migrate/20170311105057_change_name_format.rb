class ChangeNameFormat < ActiveRecord::Migration[5.0]
  def change
    change_column :ingredients, :name, :text
  end
end
