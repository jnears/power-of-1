class Coach < ActiveRecord::Base
  attr_accessible :first_name, :group_level, :last_name

  #a coach can have many runners
  has_many :runners

  def coach_name
      first_name + " " + last_name
  end
  
  #set up a variable that contains the values to enter in to the select list for group levels
  #NOTE: variable name must be uppercase
  GROUP_LEVELS = ["Basic", "Intermediate", "Advanced"]

end
