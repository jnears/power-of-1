class AddRunnerdDetailsToRunners < ActiveRecord::Migration
  def change
    add_column :runners, :date_of_birth, :date
    add_column :runners, :gender, :string
    add_column :runners, :club, :string
    add_column :runners, :county, :string
  end
end
