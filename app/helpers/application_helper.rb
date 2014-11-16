module ApplicationHelper
  def tag_cloud(tags, classes)
    max = tags.map(&:count).max
    tags.each do |tag|
      class_index = tag.count*(classes.size-1)/max
      yield tag, classes[class_index.round]
    end
  end
end
