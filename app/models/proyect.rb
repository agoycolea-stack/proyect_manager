class Proyect < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence:true
end
