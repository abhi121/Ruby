class Article < ApplicationRecord
   has_many :comments, dependent: :destroy
   validates :title ,presence: true, length: {minimum: 5}

   after_destroy :log_destroy_action

   def log_destroy_action
   	puts 'Article destroyed'
   end

end
