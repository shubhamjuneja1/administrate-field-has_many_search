class Post < ActiveRecord::Base
  has_many :authors
end

class Author < ActiveRecord::Base
  has_many :posts
end
