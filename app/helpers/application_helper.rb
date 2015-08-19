module ApplicationHelper
	def time_for(obj)
		obj.created_at.to_formatted_s(:short)
	end
end
