class Admin::AdminController < ApplicationController
	before_action :authenticate_admin
	layout 'admin'

	def index
		
	end

	def is_admin(user)
		!user.admin.zero? ? true : false
	end

	private
	def authenticate_admin
		unless current_user
			if is_admin(current_user)
				redirect_to admin_root_path
			else
				render :file => 'public/403.html', :status => :forbidden, :layout => false
			end
		end
	end
end
