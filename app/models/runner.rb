class Runner < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :gender, :date_of_birth, :county, :club, :coach_id

    #a runner can have 1 coach
    belongs_to :coaches

    validates :first_name, :last_name, :gender, :county, :club, :date_of_birth, :presence => true

end
