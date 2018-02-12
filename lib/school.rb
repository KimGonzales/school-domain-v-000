class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if roster[grade] == []
    roster[grade] = [student]
  else
    roster[grade] << student
  end
  end

end
