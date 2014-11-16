class Article < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  scope :tagged_with, ->(name){Tag.find_by_name!(name).articles}

  def tag_list
    tags.map(&:name).join(',')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name:n.strip).first_or_create!
    end
  end
end
