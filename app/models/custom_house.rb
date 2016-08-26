class CustomHouse < ActiveRecord::Base
	belongs_to :house
	validates :custom_name, :custom_value,
          :length => { :maximum => 20, :message => "Must be less than 20 characters"}
end
