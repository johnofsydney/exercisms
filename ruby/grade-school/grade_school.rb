require "pry"

class School

  attr_reader :student_db

  def initialize
    @student_db = []
  end

  def add name, grade
    @student_db <<  { :name => name, :grade => grade } 
  end



  def students grade
    @student_db
      .select { |student| student[:grade] == grade }
      .map { |student| student[:name] }
      .sort
  end


  def students_by_grade
    @student_db
      .map { |student| student[:grade] }
      .uniq
      .sort
      .map { |grade| { :grade => grade, :students => (students grade) } }
  end

end


# binding.pry
