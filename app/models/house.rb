class House < ActiveRecord::Base
	has_many :street
	has_many :person
	has_many :custom_house
	accepts_nested_attributes_for :custom_house, :person, :street, allow_destroy: true
end
