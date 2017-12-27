class Url < ApplicationRecord		
	validates :long_url, format: { with: /(http:\/\/)?(https:\/\/)?www.+/, message: "Please enter valid URL"}

	def shorten_url
		self.short_url = SecureRandom.hex(4)
	end
end
