
=begin
Here we can define a Proc object in two different, equivalent ways
We say Proc objects are 'callable' because they have a method 'call' which
will execute the code defined in the block
=end

#**TODO ENTER CODE**
# * define and call a procedure in two different ways, using new, and as a method.
#   the procedure should output a string to the console


=begin
A code block differs from a Proc object...Add more content here. Where you would normally pass a code block, to pass an
instance of Proc class, you must use & to preface the Proc
=end

#**TODO ENTER CODE**
# * create a procedure that will upcase a variable, this procedure will be used with an each method on a string array
# * to upcase the contents of that array.


=begin
A method call can include both an argument
list and a code block. Without a special flag like &, Ruby has no way of knowing
that you want to stop binding parameters to regular arguments and instead perform
a block-to-proc conversion and save the results.


So in general the idea is: if you define a method with a &param, that param is interpreted
as a code block, which is then converted into a Proc object which can be called
=end

#**TODO ENTER CODE**
# * create a capture_block method that will accept a block and use the call method on the block, then call
# * the capture_block method with a code block


##**TODO ENTER CODE**
# * create a procedure that puts a string to the console and pass it to the capture_block method
=begin
If your code above is working, and the capture_block method can accept a code block and use the 'call' method on
the block passed in, it is also possible to pass in a proper Proc object, and we'll practice that below.
=end


=begin
PROCS and Symbols
an array capitalization as method

The symbol :capitalize is interpreted as a message to be sent to each element of the
array in turn.

Symbol has a built in #to_proc method that makes this possible

So...map expects a code block, we know we can substitute a Proc for a code block
using...&, and then because :symbols has a to_proc method...the 'capitalize' method is called
on each element being mapped.
=end

#**TODO ENTER CODE**
# * output to the console a mapping function that will capitalize the first letter of each string element in an array
# * create the same mapping function but instead pass a symbol to map
# * create the array of strings in such a way that when you declare the string array you needn't use any quotes


=begin
the 'map' method takes a code block as an argument.

so if we remember, we can pass a proc to a method expecting a block using the &
marker.

What we would like to do is create a Person class that can be passed to a map method. In order to do this
we must define a method 'self.to_proc' on our Person class that will return a Proc.

Because Person isn't a proc, when passed to map ruby asks it to represent itself as such, by calling to_proc
on it.
=end

#**TODO ENTER CODE**
# * write a Person class that defines the self.to_proc method. Inside the the self.to_proc define a Proc
#   that will return the name attribute of the person object
# * use attr_accessor to declare a :name property on the Person object
# * create two instances of the Person class and set the name to a non empty string
# * place the two person instances in an array and call map on the array...passing the Person class to map, this
#   will trigger ruby to look for the to_proc method, and call it if available




=begin
**Proc and CLOSURE**

Just like in javascript, a closure can allow us to preserve the state of some variable
at a particular time

Below, m is bound when multiply_by is called, the call itself will return a Proc
object that is stored in mult

When the Proc is actually called via mult.call(12) the calling param 12 is multiplied by 10
which has been stored as the value of m
=end

#**TODO ENTER CODE**
# * write a method below named 'multiply_by' that multiplies a number x by another number m , where m
#   is a constant that doesn't change and is a parameter of 'multiply_by' when it is assigned to another variable
# * you will need multiply_by to return a Proc using Proc.new, and that Proc will do the multiplication, outputting the result
#   to the console using puts
# * after multiply_by is assigned to another variable, send the 'call' message to the variable, with a numerical parameter that
#   will server as x



=begin
the proc object carries it's context around with it, preserving the state of the variables
when they where defined by the proc

The Proc object can capture the value of a variable at a particular point in time, freezing it's value to state of the
variable at the time it was used inside the Proc
=end

#**TODO ENTER CODE**
# * declare a variable 'message' = "message used in Proc block"
# * Create a Proc instance named 'proc' that outputs 'message' to the console
# * Create a method named 'call_some_proc' that will take 'proc' as an argument
# * inside 'call_some_proc' define a variable message= "irrelevant message in method",
# * then a line that will output 'message' to the console, and then a line that will execute
#   the Proc instance.

=begin
the classic example of a counter implemented with a closure
=end

#**TODO ENTER CODE**
# * create a method named 'make_counter', inside the function it will declare a variable named 'n' and set it to 0, and
#   then return a Proc instance that will increment n by 1.
# * How can you use this function to output increments of n to the console?


=begin
Three points about lambda's
- creating a lambda creates an instance of the Proc class
- return inside of a lambda escapes the code block, while in Proc return escapes the calling method
- a lambda is strict about the number of arguments passed to it, while Proc is not
=end

#** TODO
##Lambda return test
# * define a method  return_test, inside of which a lambda is defined with a body containing only a return statement
# * on the next line inside the method execute the lambda, then on the next line output to the console "Still inside method?"
# * on the next lines inside the body define a Proc with the same body, call it, and then on the next line output to the
#   console "Am I still inside the method?"
# * execute the return_test method

