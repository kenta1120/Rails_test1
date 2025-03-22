class ChangeStartAndEndDateTypeInShedules < ActiveRecord::Migration[6.1]
  def up
    change_column :shedules, :start, :date
    change_column :shedules, :end_date, :date
  end

  def down
    change_column :shedules, :start, :integer
    change_column :shedules, :end_date, :integer
  end
end
