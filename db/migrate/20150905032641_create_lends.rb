class CreateLends < ActiveRecord::Migration
  def change
    create_table :lends do |t|
      t.integer :amount
      t.references :lender, index: true
      t.references :borrower, index: true

      t.timestamps
    end
  end
end
