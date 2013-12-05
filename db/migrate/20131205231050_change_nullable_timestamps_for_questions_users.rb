class ChangeNullableTimestampsForQuestionsUsers < ActiveRecord::Migration

def up
    change_column(:questions_users, :created_at, :datetime, :null => true)
    change_column(:questions_users, :updated_at, :datetime, :null => true)
  end

  def down
    change_column(:questions_users, :created_at, :datetime, :null => false)
    change_column(:questions_users, :updated_at, :datetime, :null => false)
  end

end
