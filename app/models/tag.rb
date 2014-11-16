class Tag < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings

  def count
    taggings.size
  end
end
