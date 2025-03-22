class RenameUpdateColumnInTableName < ActiveRecord::Migration[6.1]
  def change
    rename_column :table_name, :update, :updated_day
  end
end
