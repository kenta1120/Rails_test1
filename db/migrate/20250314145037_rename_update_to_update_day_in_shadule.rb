class RenameUpdateToUpdateDayInShadule < ActiveRecord::Migration[6.1]
  def change
    rename_column :shedules, :update, :update_day
  end
end
