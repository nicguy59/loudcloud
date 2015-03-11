class Song < ActiveRecord::Base
   has_many :likes, dependent: :nullify
   has_many :comments, dependent: :nullify
   
end
