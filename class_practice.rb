##Create an Empty class named 'Person'

class Person
  
##Define three properties on that class 'name','age','birthdate'
attr_accessor :name, :age, :birthdate

##Define 'methods' that allow you to access and set all three of those properties, Do not use attribute accessor

def name
    @name
  end

  def age
    @age
  end

  def birthdate
    @birthdate
  end

##Explain what calling Person.new does
=begin

Person.new will create an object with the propeties specified above.

=end

##Create an initializer method that allows you do Person.new 'Amy Smith' , which initializes the  Person's name property
def initialize (name)
  @name = name
end

##Write a method that outputs the value of the self keyword to the console
def printDazzle
  puts "self"
end

##Explain in as much detail as possible what self refers to and what it means in the grand scheme of things
=begin

From  http://www.jimmycuadra.com/posts/self-in-ruby

"The keyword self in Ruby gives you access to the current object – the object that is receiving the current message. To explain: a method call in Ruby is actually the sending of a message to a receiver. When you write obj.meth, you're sending the meth message to the object obj. obj will respond to meth if there is a method body defined for it. And inside that method body, self refers to obj.""


- we use self in a similar way to "this" in JS. 

- we use self to help specify the object or method or class in question when we
call something. Without it, Ruby can default its behavior to going up the hierarchy when looking for the object to call on and not achieve the intended result.

=end

##Explain what object instantiation means:
=begin


It's when we create an object in memory. Something like "Person.new" in our IRB
console will create a new Person object that has it's own memory address.

We can also have that object be saved in a database. 

Objects have state and behavior, and this is all wrapped up in the bit of memory that is allocated at instantiation - when the object is created.

=end


#What is the difference in scope between an instance variable vs a local variable?

# From http://stackoverflow.com/questions/2088299/what-is-the-difference-between-local-and-instance-variables-in-java

# Instance variables are given default values, ie null if it's an object reference, 0 if it's an int.

# Local variables don't get default values, and therefore need to be explicitly initialized (and the compiler usually complains if you fail to do this).


#Which one is the instance variable and which one is the local variable?
class PersonC

  @name = "Amy"

  def print_name
    name = "Bob"
    puts name
  end

  def name
    puts @name
  end

end

=begin
@name is the instance var.
name is the local var.


=end


#Explain in detail what a method is

=begin
A method is a way of signalling instruction to objects. In 'The Well-Grounded Rubyist', Black refers to methods as "messages" that are passed to an object. I think of them as instruction sets (or procedure) that can act on the properties of an object (of a specific class) in specific circumstances. Like if we wanted to turn all of the letters to capitals in a username, we could define a method, specifiy the property of @user.name, and call another method on that to go through that string and change the values. 
=end


##What is the difference between a Class method and an instance method?
class PersonB
  @name = "Hey"

  def self.name
    @name
  end

  def say_name
    puts "name is #{@name}"
  end
end

=begin

From http://stackoverflow.com/questions/1053592/what-is-the-difference-between-class-and-instance-methods

"instance methods operate on an object and has access to its instance variables, while a class method operates on a class as a whole and has no access to a particular instance's variables (unless you pass the instance in as a parameter)."

self.name is a instance method. say_name is a Class method.


=end


#Is it possible to add methods to an object after it is created? In other words...is the following code correct?? Explain your answer
class PersonD

   @name = "Bob"

  def say_name

  end

end

person  = PersonD.new

def person.say_name_again
  puts @name
end

person.say_name_again

=begin
It doesn't look like it. When entering this into the console, person.say_name_again returns an empty string (or nil). But if I change it so that say_name_again is defined within the class, it still doesn't work. Only when the instance variable is defined within a method does the call to say_name_again successfully return "Bob".

=end


#What does the ? mark at the end of a method signify?

=begin
This is a method that returns a boolean, checking the 'truthiness' of a certain value. Ex -> if number.zero? reads like "if the number is zero"

=end


#What does the ! sign at the end of a method signify?

=begin
From http://stackoverflow.com/questions/7179016/what-is-the-purpose-of-and-at-the-end-of-method-names

"Methods ending in ! perform some permanent or potentially dangerous change; for example:

In Rails, ActiveRecord::Base#save returns false if saving failed, while ActiveRecord::Base#save! raises an exception."

=end


#What does the * symbol signify when passed as a method parameter?
#Where else is it used in the language and for what purpose?

def do_something *param
  puts param
end

=begin

Splat acts like a wildcard. I've never seen it here referenced in the paramters. 

It seems to let me pass any number in or use other characters. (4) returns 4. :rock returns rock.

We use it as a wildcard to specify when we're not specific about a file or command. I use it in gitignore to block DS_Store and log files.

=end

