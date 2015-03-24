class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
			t.belongs_to :rating

      t.timestamps null: false
    end
  end
end
