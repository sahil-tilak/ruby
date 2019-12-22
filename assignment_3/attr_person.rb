class Person                                    #class helps in creating objects.
  attr_writer :address                          #attribute writer is used to set values from outside the class.
  attr_reader :age                              #attribute reader is used to get values from outside the class.
  attr_accessor :name                           #attribute accessor is used to both get and set values from outside the class.

  def initialize (address, age, name)
    @address=address
    @age=age
    @name=name
  end

  def self.class                                #class methods provide funtionality to the class and no instance is required.
    puts "class method"
  end

  def instance_class                            #instance methods provide functionality to the given instance.
    puts "instance"
  end

  public                                        #can be used by anyone.
  def public_test
    puts "public"
  end

  private                                       #cannot be used by anyone outside the class.
  def private_test
    puts "private"
  end

end

i=Person.new("Karvenagar", 20, "Sahil")
#puts i.address
puts i.age
puts i.name
puts i.class.class


