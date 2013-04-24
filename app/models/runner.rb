class Runner < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :gender, :date_of_birth, :county, :club

    validates :first_name, :last_name, :gender, :county, :club, :date_of_birth, :presence => true

end
