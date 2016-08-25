class House < ActiveRecord::Base
	belongs_to :street
	has_many :people 
	has_many :custom_house
	accepts_nested_attributes_for :custom_house, allow_destroy: true
end
