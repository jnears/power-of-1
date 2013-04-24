class AddCoachesIdToRunners < ActiveRecord::Migration
  def change
    add_column :runners, :coach_id, :integer
  end
end
