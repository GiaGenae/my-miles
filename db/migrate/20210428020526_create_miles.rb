class CreateMiles < ActiveRecord::Migration
  def change
    create_table :miles do |t|
      t.date :date
      t.decimal :distance
      t.time :duration

      t.timestamps null: false
    end
  end
end
