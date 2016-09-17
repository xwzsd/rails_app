class Street < ActiveRecord::Base
	has_many :houses
	validates :street_name, 
          :presence => {:message => "Name can't be blank." },
          :length => { :maximum => 20, :message => "Must be less than 20 characters"}
end
