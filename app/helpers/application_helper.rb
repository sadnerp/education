module ApplicationHelper
	# returns title for page
	def title(page_title)
		base_title = "Education"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
