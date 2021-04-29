class CreateMiles < ActiveRecord::Migration[5.2]
  def change
    create_table :miles do |t|
      t.date :date
      t.decimal :distance
      t.time :duration
      # t.references :runner, foreign_key: {to_table: :users, on_delete: :cascade}

      t.timestamps null: false
    end
  end
end
