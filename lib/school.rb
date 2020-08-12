# code here!
class School
  
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    # if roster.keys.include?(grade)
    #   roster[grade] << name
    # else 
    #   roster[grade] = []
    #   roster[grade] << name
    # end
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    sorted_hash = {}
    roster.each do |grade_key, students_array|
      sorted_hash[grade_key] = students_array.sort
    end
    sorted_hash
  end
  
end