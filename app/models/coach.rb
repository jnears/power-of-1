class Coach < ActiveRecord::Base
  attr_accessible :first_name, :group_level, :last_name

  #a coach can have many runners
  has_many :runners
end
