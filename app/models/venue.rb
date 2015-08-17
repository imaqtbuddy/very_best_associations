class Venue < ActiveRecord::Base
  validates :name, :uniqueness=>{:scope=>:address}, :presence=>true
  validates :neighborhood_id, :presence=>true

end
