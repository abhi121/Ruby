class Post < ApplicationRecord
	validates :body ,presence: true, length: {minimum: 5}
	#attr_accessor :body
end
