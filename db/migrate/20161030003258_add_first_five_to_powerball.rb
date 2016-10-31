class AddFirstFiveToPowerball < ActiveRecord::Migration[5.0]
  def change
    change_table :powerball_picks do |t|
      t.integer :wb1, null: false, default: 0
      t.integer :wb2, null: false, default: 0
      t.integer :wb3, null: false, default: 0
      t.integer :wb4, null: false, default: 0
      t.integer :wb5, null: false, default: 0
    end
  end
end
