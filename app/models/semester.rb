class Semester < ActiveRecord::Base
	belongs_to :user
	validates :number, presence: true
end