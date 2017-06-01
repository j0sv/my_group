class Person
  @@womenName = ['Maria', 'Anna', 'Margareta', 'Elisabeth', 'Eva', 'Kristina', 'Birgitta', 'Karin', 'Elisabet',
    'Marie', 'Ingrid', 'Christina', 'Linnéa', 'Sofia', 'Kerstin', 'Marianne', 'Lena', 'Helena', 'Emma',
    'Johanna', 'Linnea', 'Inger', 'Sara', 'Cecilia', 'Elin']

  @@manName = ['Erik', 'Lars', 'Karl', 'Anders', 'Johan', 'Per', 'Nils', 'Carl', 'Mikael', 'Jan', 'Hans',
    'Lennart', 'Olof', 'Peter', 'Gunnar', 'Sven', 'Fredrik', 'Bengt', 'Bo', 'Daniel', 'Gustav', 'Åke', 'Göran',
    'Alexander', 'Magnus']


  @@lastName = ['Johansson', 'Andersson', 'Karlsson', 'Nilsson', 'Eriksson', 'Larsson', 'Olsson',
    'Persson', 'Svensson', 'Gustafsson', 'Pettersson', 'Jonsson', 'Jansson', 'Hansson',
    'Bengtsson', 'Jönsson', 'Carlsson', 'Petersson', 'Lindberg', 'Magnusson', 'Lindström',
    'Gustavsson', 'Olofsson', 'Lindgren', 'Axelsson']

  attr_accessor :name, :gender, :age

  def initialize ()
    @age = rand(100)

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
