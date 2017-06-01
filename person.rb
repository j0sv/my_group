=begin
#create array
personer = []

#add 20 person to array
20.times do personer.push Person.new() end

#Print all person in array
personer.each do |person| print person end
=end

class Person
  #25 most common first name in Sweden for wommen
  @@womenName = ['Maria', 'Anna', 'Margareta', 'Elisabeth', 'Eva', 'Kristina', 'Birgitta', 'Karin', 'Elisabet',
    'Marie', 'Ingrid', 'Christina', 'Linnéa', 'Sofia', 'Kerstin', 'Marianne', 'Lena', 'Helena', 'Emma',
    'Johanna', 'Linnea', 'Inger', 'Sara', 'Cecilia', 'Elin']

#25 most common first name in Sweden for men
  @@manName = ['Erik', 'Lars', 'Karl', 'Anders', 'Johan', 'Per', 'Nils', 'Carl', 'Mikael', 'Jan', 'Hans',
    'Lennart', 'Olof', 'Peter', 'Gunnar', 'Sven', 'Fredrik', 'Bengt', 'Bo', 'Daniel', 'Gustav', 'Åke', 'Göran',
    'Alexander', 'Magnus']

#25 most common first last in Sweden
  @@lastName = ['Johansson', 'Andersson', 'Karlsson', 'Nilsson', 'Eriksson', 'Larsson', 'Olsson',
    'Persson', 'Svensson', 'Gustafsson', 'Pettersson', 'Jonsson', 'Jansson', 'Hansson',
    'Bengtsson', 'Jönsson', 'Carlsson', 'Petersson', 'Lindberg', 'Magnusson', 'Lindström',
    'Gustavsson', 'Olofsson', 'Lindgren', 'Axelsson']

  attr_accessor :name, :gender, :age

  def initialize ()
    #assign ranom age on initialize
    @age = rand(100)

    #assign ranom gender and name on initialize
    if rand(2)==0
      @name = @@manName[rand(25)] + " " + @@lastName[rand(25)]
      @gender = "man"
    else
      @name = @@womenName[rand(25)] + " " + @@lastName[rand(25)]
      @gender = "women"
    end

    end

def to_s()
  return @name + " is a " + @age.to_s + " year old " + @gender + "\n"
end

end
