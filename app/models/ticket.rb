class Ticket < ApplicationRecord
  belongs_to :event
  validates_presence_of :name
  has_many :registrations
end
