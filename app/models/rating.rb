class Rating < ActiveRecord::Base
has_one :comment
belongs_to :post

end
