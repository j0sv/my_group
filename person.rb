class Person
  attr_accessor :name, :gender, :age

  def initialize (args)
    @name=args[:name]
    @gender=args[:gender]
    @age=args[:age]
  end

def to_s()
  return @name + " is a " + @age.to_s + " year old " + @gender + "\n"
end

end
