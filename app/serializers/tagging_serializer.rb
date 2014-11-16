class TaggingSerializer < ActiveModel::Serializer
  attributes :id
  has_one :tag
  has_one :article
end
