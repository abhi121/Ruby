class Post < ApplicationRecord
    scope:popular, -> { where ("no_of_comments > 97") }
    scope:new1 , -> { where ('created_at < ?',2.year.ago )}
	belongs_to :user

end
