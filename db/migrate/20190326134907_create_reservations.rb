class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :restaurant, foreign_key: true
      t.text :date

      t.timestamps
    end
  end
end
