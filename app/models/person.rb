class Person < ActiveRecord::Base
	has_many :house
	validates :name, 
          :presence => {:message => "Name can't be blank." },
          :uniqueness => {:message => "Name already exists."},
          :length => { :maximum => 20, :message => "Must be less than 20 characters"}

end
