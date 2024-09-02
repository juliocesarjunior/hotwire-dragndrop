class Course < ApplicationRecord
	validates :title, presence: true

	  include RankedModel 
 
  ranks :row_order
end
