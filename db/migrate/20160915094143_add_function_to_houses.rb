class AddFunctionToHouses < ActiveRecord::Migration
	def up
	  execute <<-SQL
	    CREATE FUNCTION sort_array(unsorted_array anyarray) RETURNS anyarray AS $$
	      BEGIN
	        RETURN (SELECT ARRAY_AGG(val) AS sorted_array
	        FROM (SELECT 
	        	 UNNEST(string_to_array(lower(array_to_string(unsorted_array, ',')), ','))
				  AS val ORDER BY val)
				AS sorted_vals);
	      END;
	    $$ LANGUAGE plpgsql IMMUTABLE STRICT;

	    CREATE UNIQUE INDEX index_houses_on_house_number_and_custom_fields_person_id_street_id ON houses USING btree (house_number, sort_array(custom_fields));
	  SQL
	end

	def down
	  execute <<-SQL
	    DROP INDEX IF EXISTS index_houses_on_house_number_and_custom_fields_person_id_street_id;
	    DROP FUNCTION IF EXISTS sort_array(unsorted_array anyarray);
	  SQL
	end
end
