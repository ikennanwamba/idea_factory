class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.integer :value

      t.timestamps null: false
    end
    add_index :post_votes, :user_id
    add_index :post_votes, :post_id
  end
end
