class RenameShedulesToSchedules < ActiveRecord::Migration[6.1]
  def change
    rename_table :shedules, :schedules
  end
end
