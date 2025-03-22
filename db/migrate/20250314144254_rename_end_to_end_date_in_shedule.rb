class RenameEndToEndDateInShedule < ActiveRecord::Migration[6.1]
  def change
    rename_column :shedules, :end, :end_date
  end
end
