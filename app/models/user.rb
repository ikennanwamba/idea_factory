class User < ActiveRecord::Base
has_many :posts
has_many :teams, :through => :posts
has_many :ratings, :through => :posts

end
