class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, :uniqueness => { :case_sensitive => false }

  belongs_to :user
  validates :user_id, presence: true 
end
