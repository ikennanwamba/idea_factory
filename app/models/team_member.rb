class TeamMember < ActiveRecord::Base
belongs_to :team
has_one :post, :through => :team

end
