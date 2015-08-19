class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :topic_id, :created_at, :updated_at

  #belons_to :topic
end
