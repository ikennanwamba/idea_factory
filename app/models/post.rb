class Post < ActiveRecord::Base
belongs_to :user
has_one :team
has_many :team_members, :through => :team
has_many :ratings
has_one :ranking

end
