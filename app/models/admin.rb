class Admin < ActiveRecord::Base

	def self.search(search)
		where("lower(name) like lower(?)", "%#{search}%")		
	end
end
