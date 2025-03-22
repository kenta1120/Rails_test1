class AddAlldayToShedules < ActiveRecord::Migration[6.1]
  def change
    add_column :shedules, :allday, :string, after: :end_date
  end
end
