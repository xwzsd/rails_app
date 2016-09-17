class House < ActiveRecord::Base
	belongs_to :street
	belongs_to :person
	accepts_nested_attributes_for :person, :street, allow_destroy: true
	validates(:house_number, presence: {:message => "Number can't be blank." }, length: { in: 1..10, message: "Number must be more then 1 and less than 10 characters"})
	
	def duplicate_house_exists?
	  relation = self.class.
	    where(street_id: street_id).
	    where(person_id: person_id).
	    where(house_number: house_number).
	    where('sort_array(custom_fields) = sort_array(ARRAY[?])', custom_fields)

	  relation = relation.where.not(id: id) if persisted?

	  relation.exists?
	end
end
