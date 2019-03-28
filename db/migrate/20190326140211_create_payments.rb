class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.belongs_to :user, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
