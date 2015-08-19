class User < ActiveRecord::Base
validates :username, :presence=>true, :uniqueness=>true
has_many :favorites, :dependent => :destroy
has_many :dishes, :through=> :favorites
has_many :venues, :through=> :favorites
end
