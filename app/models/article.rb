class Article < ActiveRecord::Base

	def self.search(search)
	  if search
	    all.where(['name LIKE ?', "%#{search}%"])
	  else
	    all
	  end
	end
end
