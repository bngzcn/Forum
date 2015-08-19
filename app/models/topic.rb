class Topic < ActiveRecord::Base
	extend FriendlyId
	  friendly_id :title, use: :slugged
	
	paginates_per 2
	
	validates :title, presence: true, length: {minimum:5, maximum:20}

	belongs_to :user
	has_many :posts
	has_many :category_topics
	has_many :categories, through: :category_topics

	def active_model_serializer
		TopicSerializer
	end
end
