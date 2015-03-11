class Comment < ActiveRecord::Base
  belongs_to :songs
  validates :body, presence: true, length: { minimum: 2}

end
