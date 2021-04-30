class CreateRuns < ActiveRecord::Migration[5.2]
  def change
    create_table :runs do |t|
      t.date :date
      t.decimal :distance
      t.time :duration

      t.timestamps null: false
    end
  end
end
