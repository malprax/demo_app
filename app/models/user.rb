class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates :name, :presence => true, :length => {:maximum => 30}
  validates :email, :presence => true, :length => {:maximum => 30}
  has_many :microposts
end
