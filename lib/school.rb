class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade]= []
    if roster[grade].empty?
    roster[grade] = [student]
    else
      roster[grade] << student
    end
  end

end
