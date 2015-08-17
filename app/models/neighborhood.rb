class Neighborhood < ActiveRecord::Base
  validates :name, :presence=>true, :uniqueness=>{:scope=>:city}, :presence=>true
end
