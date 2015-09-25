module Admin::MenusHelper
	def to_weekday(day)
		case day
		when 1
			"Senin"
		when 2
			"Selasa"
		when 3
			"Rabu"
		when 4
			"Kamis"
		when 5
			"Jumat"
		when 6
			"Sabtu"
		when 7
			"Minggu"
		end
	end
end
