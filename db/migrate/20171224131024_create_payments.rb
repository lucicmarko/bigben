class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.references :course, foreign_key: true
      t.references :month, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
