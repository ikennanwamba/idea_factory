class Team < ActiveRecord::Base
belongs_to :post
has_many :team_members

end
