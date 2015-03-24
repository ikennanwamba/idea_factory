class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :originality
      t.integer :impact
      t.integer :practicality
      t.integer :measurability
      t.integer :applicability

			t.belongs_to :comment
			t.belongs_to :post, index: true
      t.timestamps null: false
    end
  end
end
