class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
			t.belongs_to :post, index: true
			t.belongs_to :team_member, index: true

      t.timestamps null: false
    end
  end
end
