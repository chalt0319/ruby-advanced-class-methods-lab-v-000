require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    person = self.new #Song.new
    person.save 
    person 
  end
  
  def self.new_by_name(name)
    person = self.new 
    person.name = name 
    person
  end
  
  def self.create_by_name(name)
    person = self.new 
    person.name = name 
    person.save 
    person 
  end 
    
  def self.find_by_name(name)
    self.all.find {|song| song.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    return_value = self.find_by_name(name) 
    return_value ? return_value : self.create_by_name(name)
  end 
  
  def self.alphabetical
    self.all.sort_by do |song|
      song.name 
    end  
  end 
    
  
end

