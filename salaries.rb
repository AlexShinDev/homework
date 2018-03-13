class People
  def initialize(people=[])
    @people = people
  end
  def <<(person)
    @people << person
  end
  def sort
    @people.sort_by { |person| [ person.salaries ] }
  end
  def length
    @people.length
  end
  def longest_last
    @last_max = 0
    @people.each do |person|
      if person.last_name.length > @last_max
        @last_max = person.last_name.length
      end
    end
    @last_max
  end
  def longest_first
    @first_max = 0
    @people.each do |person|
      if person.first_name.length > @first_max
        @first_max = person.first_name.length
      end
    end
    @first_max
  end
end
class Person
  attr_reader :first_name, :last_name, :salaries
  def initialize(name)
    split_up_name(name)
  end
  def split_up_name(name)
    formatted = name.split(",")
    formatted[2].strip!
    @first_name = formatted[1]
    @last_name = formatted[0]
    @salaries = formatted[2]
  end
end
p people = People.new
File.open('salaries.csv').each do |name|
  person = Person.new(name)
  people << person
end
p people

# puts "Last#{" " * (people.longest_last+1)} First#{" " * (people.longest_first+1)} Salary"
# puts "#{"="*(people.longest_last + people.longest_first + 19)}"
# people.sort.each do |person|
#   p "#{person.last_name} #{person.first_name} $#{person.salaries}"
# end