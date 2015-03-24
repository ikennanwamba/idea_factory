class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :type

			t.belongs_to :team, index: true

      t.timestamps null: false
    end
  end
end
