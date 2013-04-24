class Runner < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :gender, :date_of_birth, :county, :club, :coach_id

    #a runner can have 1 coach
    #NOTE - SINGULAR
    belongs_to :coach

    #makes sure if coach has been deleted and runner is edited you cannot save it to a caoch that no longer exists
    validates_existence_of :coach, :both => false

    validates :first_name, :last_name, :gender, :county, :club, :date_of_birth, :presence => true

end
