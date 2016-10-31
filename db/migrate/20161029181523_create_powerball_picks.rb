class CreatePowerballPicks < ActiveRecord::Migration[5.0]
  def change
    create_table :powerball_picks do |t|
      t.belongs_to :user, foreign_key: true
      t.datetime :draw_on
      t.integer :powerball

      t.timestamps
    end
  end
end
