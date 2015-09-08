module UsersHelper
	def full_name(user_id)
		u = User.find(user_id)
		"#{u.first_name}  #{u.last_name}"
	end

	def gender(user_id)
		u = User.find(user_id)
		u.gender == 0 ? "Laki-laki" : "Perempuan"
	end
end
