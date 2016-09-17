let feature = [{id: 1, name: 'garage'}, {id: 2, name: 'krilco'}]//array of global features

class HashSerializer
  def self.dump(arr) in [{id: 1, name: 'garage'}], out: [1]
  	arr.map(element => element.id)
  end

  def self.load(arr) in [1, 2], out: [{}]
  	arr.map(element => feature.find(element))
  end
end