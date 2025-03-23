class ChangeAlldayToBooleanInSchedules < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :allday, :boolean, using: "allday::boolean", default: false
  end

  def down
    change_column :schedules, :allday, :string
  end
end
