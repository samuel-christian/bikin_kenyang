module ApplicationHelper
	def active_page(path, request)
		if request.get?
			"active" if current_page?(path)
		else
			path == "/users/sign_in" ? "active" : ""
		end
  end
end
