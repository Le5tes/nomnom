class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :description
  validates_length_of :description, :maximum => 500
end
