class PostImage < ApplicationRecord
  
  has_one_attached :image
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :goods, dependent: :destroy
  
  validates :image, presence: true
  validates :animal_name, presence: true
  validates :caption, presence: true
  
  
  def get_image(width,height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end 
    image.variant(resize_to_limit: [width, height]).processed
  end 
  
  def gooded_by?(user)
    goods.exists?(user_id: user.id)
  end 
  
end
