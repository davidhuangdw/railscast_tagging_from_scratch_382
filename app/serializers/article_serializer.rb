class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :published_on, :content
end
