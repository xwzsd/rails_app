class HashSerializer
  def self.dump(arr)
  	arr.map(element => element.id)
  end

  def self.load(arr)
  	arr.map(element => feature.find(element))
  end
end