class Dish < ActiveRecord::Base
  validates :name, :presence=>true, :uniqueness=>true
  validates :cuisine_id, :presence=>true
  belongs_to :cuisine
  has_many :favorites, :dependent => :destroy
end
