class House < ActiveRecord::Base
	has_many :street
	has_many :person
	has_many :custom_house
	accepts_nested_attributes_for :custom_house, :person, :street, allow_destroy: true
	validates :house_number, 
          :presence => {:message => "Number can't be blank." },
          :length => { :maximum => 10, :message => "Must be less than 10 characters"}

end
