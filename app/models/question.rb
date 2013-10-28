class Question < ActiveRecord::Base
  attr_accessible :question_text

  has_and_belongs_to_many :users
end
