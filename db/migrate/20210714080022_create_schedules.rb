class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :start
      t.date :finish
      t.boolean :allday
      t.datetime :update

      t.timestamps
    end
  end
end
