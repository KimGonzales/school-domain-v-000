class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster.collect{|grade, students|students.sort!}
  end

end
