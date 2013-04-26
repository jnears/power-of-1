class Runner < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :gender, :date_of_birth, :county, :club, :coach_id

    #a runner can have 1 coach
    #NOTE - SINGULAR
    belongs_to :coach

    validates :first_name, :last_name, :gender, :county, :club, :date_of_birth, :presence => true

  def runner_name
      first_name + " " + last_name
  end 


  def coach_name 
      if coach.present?    
      coach.coach_name
    end
  end 

end
