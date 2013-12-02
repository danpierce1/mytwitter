class Course < ActiveRecord::Base
  attr_accessible :Capacity, :Leader, :Name, :Type
  validates :Name, presence: true, length: { maximum: 50 }
  validates :Leader, presence: true, length: { minimum: 5 }

end
