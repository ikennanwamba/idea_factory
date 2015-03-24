class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :votes
      t.float :avg_score

      t.timestamps null: false
    end
  end
end
