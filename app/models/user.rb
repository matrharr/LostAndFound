class User < ActiveRecord::Base
  has_many :losts
  has_many :founds
end
