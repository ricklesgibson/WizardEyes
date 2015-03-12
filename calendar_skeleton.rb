###A skeleton of a Ruby calendar app


class Calendar

  def initialize
  end

  def add(item)
  end

  def write(file)

  end

end

class CalendarEntry
  
  def initialize(name)
    # store name
    # set past to false
  end
end

# ---
# the classes should be used like this:
#list = Calendar.new
#
#list.add CalendarItem.new("A Play that is opening in the future")
#list.add CalendarItem.new("Concert happening in the future")
#list.add CalendarItem.new("A movie screening that happened in the past", true )
#
#list.write("calendar.txt")


#calendar.txt should look exactly like the following:
=begin
calendar.txt
---------------
A Play that is opening in the future
Concert happening in the future

=end