class PostComment < ApplicationRecord
  
  belomgs_to :user
  belongs_to :post_image
  
end
