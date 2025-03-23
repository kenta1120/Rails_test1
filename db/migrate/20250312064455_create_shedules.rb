class CreateShedules < ActiveRecord::Migration[6.1]
  def change
    create_table :shedules do |t|
      t.string :title
      t.date :start
      t.date :end_date
      t.boolean :allday
      t.text :shedule_memo

      t.timestamps
    end
  end
end
